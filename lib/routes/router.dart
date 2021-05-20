import 'package:auto_route/auto_route.dart';
import 'package:worldtime_bloc/main.dart';
import 'package:worldtime_bloc/presentation/pages/clock_page/clock_page.dart';
import 'package:worldtime_bloc/presentation/pages/time_zones_page/time_zones_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  // AutoRoute(path: '/', page: NavigationPage, initial: true, children: [
  //   AutoRoute(path: 'colck_page', name: 'ClockPage', page: ClockPage),
  //   AutoRoute(
  //       path: 'time_zones_page', name: 'TimeZonesPage', page: TimezonesPage),
  //   RedirectRoute(path: '*', redirectTo: '')
  // ]),
  AutoRoute(
      path: '/',
      initial: true,
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          name: 'ClockRoute',
          page: ClockPage,
        ),
        AutoRoute(
            path: 'timezones',
            name: 'TimeZonesRoute',
            page: TimezonesPage),
        RedirectRoute(path: '*', redirectTo: '')
      ]),

  RedirectRoute(path: '*', redirectTo: '')
])
class $AppRoute {}
