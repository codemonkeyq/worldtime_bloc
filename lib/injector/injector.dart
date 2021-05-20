import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:koin/koin.dart';
import 'package:koin_bloc/koin_bloc.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/bloc/clock_cubit.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/clock_page.dart';
import 'package:worldtime_bloc/presentation/pages/time_zones_page/bloc/timezones_cubit.dart';
import 'package:worldtime_bloc/presentation/pages/time_zones_page/time_zones_page.dart';

final dev = [dataModule];

final options = CacheOptions(
    store: MemCacheStore(),
    policy: CachePolicy.refreshForceCache,
    hitCacheOnErrorExcept: [401, 403, 503],
    maxStale: const Duration(days: 7),
    priority: CachePriority.normal,
    cipher: null,
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    allowPostMethod: false);

final dio = Dio()..interceptors.add(DioCacheInterceptor(options: options));

final dataModule = Module()
  ..single<Dio>(
    (_) => dio,
  )
  ..bloc<ClockCubit>((scope) => ClockCubit(), qualifier: named('clockCubit'))
  ..bloc<TimezonesCubit>((scope) => TimezonesCubit(scope.get()),
      qualifier: named('timezonesCubit'))
  ..scopeOne((scope) => scope.get<Dio>())
  ..scopeOneBloc<ClockCubit, ClockPage>(
      (scope) => scope.get(named('clockCubit')))
  ..scope<TimezonesPage>((scope) {
    scope.scopedBloc<TimezonesCubit>(
        (scope) => scope.get(named('timezonesCubit')));
    scope.scopedBloc<ClockCubit>((scope) => scope.get(named('clockCubit')));
  });
