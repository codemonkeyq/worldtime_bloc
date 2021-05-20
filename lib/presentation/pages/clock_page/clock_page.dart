import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:worldtime_bloc/data/client/worldtime_api.dart';
import 'package:worldtime_bloc/model/time_info.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/bloc/clock_cubit.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/widgets/clock_container.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/widgets/clock_painter.dart';
import 'package:worldtime_bloc/routes/router.gr.dart';

class ClockPage extends StatefulHookWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage>
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
    final time = useState<DateTime>(DateTime.now());

    final timezone = useMemoized(
        () => WorldTimeApi(scopeContext.get<Dio>()).getCurrentTime());

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 1), (_) {
        time.value = DateTime.now();
      });
      return timer.cancel;
    }, [time]);

    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PaddedRow(children: [
            Spacer(),
            MaterialButton(
                padding: const EdgeInsets.all(8),
                color: Colors.pink,
                shape: CircleBorder(),
                child: Icon(Icons.add),
                onPressed: () => context.router.push(TimeZonesRoute()))
          ]),
          Container(
            child: PaddedColumn(
              children: [
                ClockContainer(
                  child: CustomPaint(
                    painter: ClockPainter(time.value),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                    future: timezone,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        TimeInfo timezone = snapshot.data as TimeInfo;
                        return AutoSizeText(
                          timezone.timezone,
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: IconButton(
                            icon: Icon(Icons.refresh),
                            onPressed: () {}
                          ),
                        );
                      }
                      return CircularProgressIndicator();
                    }),
                AutoSizeText(
                  DateFormat.jm().format(time.value),
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          SizedBox(
              height: 200,
              width: double.infinity,
              child: BlocProvider<ClockCubit>.value(
                value: scopeContext.get<ClockCubit>(),
                child: BlocConsumer<ClockCubit, List<TimeInfo>>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    List<TimeInfo> clocks = state;

                    if (clocks.isNotEmpty) {
                      return ListView.builder(
                          itemCount: clocks.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            TimeInfo clock = clocks[index];
                            var tempTime = time.value.toUtc();
                            int offset = clock.rawOffset + clock.dstOffset;

                            if (clock.rawOffset > 0) {
                              tempTime =
                                  tempTime.add(Duration(seconds: offset));
                            } else if (clock.rawOffset < 0) {
                              tempTime = tempTime
                                  .subtract(Duration(seconds: (offset * -1)));
                            }

                            return Card(
                              child: <Widget>[
                                Container(
                                  width: 300,
                                  padding: const EdgeInsets.all(32),
                                  child: PaddedColumn(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      AutoSizeText(
                                        clock.timezone,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      AutoSizeText(
                                        '${clock.utcOffset}',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      PaddedRow(
                                        children: [
                                          Expanded(
                                              child: Text(DateFormat.yMMMd()
                                                  .format(time.value))),
                                          AutoSizeText(
                                            DateFormat.jms().format(time.value),
                                            textAlign: TextAlign.right,
                                            style: TextStyle(fontSize: 24),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    icon: Icon(Icons.clear),
                                    onPressed: () {
                                      context
                                          .read<ClockCubit>()
                                          .removeTimeInfo(clock);
                                    },
                                  ),
                                ),
                              ].toStack(),
                            );
                          });
                    }
                    return Container();
                  },
                ),
              )),
        ],
      )),
    );
  }

  @override
  String? get restorationId => 'clock_page';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {}
}
