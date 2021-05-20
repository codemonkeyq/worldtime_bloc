import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldtime_bloc/data/client/worldtime_api.dart';
import 'package:worldtime_bloc/model/time_info.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/bloc/clock_cubit.dart';
import 'package:worldtime_bloc/presentation/pages/time_zones_page/bloc/timezones_cubit.dart';

class TimezonesPage extends StatefulHookWidget {
  const TimezonesPage({Key? key}) : super(key: key);

  @override
  _TimezonesPageState createState() => _TimezonesPageState();
}

class _TimezonesPageState extends State<TimezonesPage>
    with SingleTickerProviderStateMixin, RestorationMixin, ScopeStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final timezone = useState<String>('');
    final loading = useState<bool>(false);

    useEffect(() {}, []);

    return Scaffold(
        appBar: AppBar(
          title: AutoSizeText('Select timezone'),
        ),
        body: MultiBlocProvider(
            providers: [
              BlocProvider<TimezonesCubit>.value(
                  value: scopeContext.get<TimezonesCubit>()),
              BlocProvider<ClockCubit>.value(
                  value: scopeContext.get<ClockCubit>()),
            ],
            child: BlocBuilder<TimezonesCubit, List<String>>(
              builder: (context, state) {
                final timeZones = state;
                if (timeZones.isNotEmpty) {
                  return SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: PaddedColumn(children: [
                        DropdownSearch<String>(
                          showSearchBox: true,
                          onChanged: (String? tz) {
                            timezone.value = tz!;
                          },
                          items: timeZones,
                          mode: Mode.MENU,
                          selectedItem: timezone.value,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                            height: kToolbarHeight,
                            width: context.widthPct(0.6),
                            child: ElevatedButton(
                                child: loading.value
                                    ? CircularProgressIndicator()
                                    : Text('Add'),
                                onPressed: loading.value
                                    ? null
                                    : () async {
                                        if (timezone.value.isEmpty) return;
                                        loading.value = true;
                                        bool exists = false;

                                        context
                                            .read<ClockCubit>()
                                            .state
                                            .forEach((element) {
                                          if (element.timezone ==
                                              timezone.value) {
                                            exists = true;
                                          }
                                        });

                                        if (!exists) {
                                          print(timezone.value);

                                          TimeInfo info = await WorldTimeApi(
                                                  scopeContext.get<Dio>())
                                              .getTimezoneTime(timezone.value);
                                          context
                                              .read<ClockCubit>()
                                              .addTimeInfo(info);

                                          loading.value = false;

                                          context.router.pop();
                                        } else {
                                          loading.value = false;

                                          ScaffoldMessenger.of(context)
                                            ..hideCurrentSnackBar()
                                            ..showSnackBar(SnackBar(
                                              content: AutoSizeText(
                                                  ' The timezone clock is already available in the list.'),
                                            ));
                                        }
                                      })),
                      ]));
                }

                return Center(child: CircularProgressIndicator());
              },
            )));
  }

  @override
  String? get restorationId => 'timezones_page';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {}
}
