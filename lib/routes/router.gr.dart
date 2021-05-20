// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/pages/clock_page/clock_page.dart' as _i3;
import '../presentation/pages/time_zones_page/time_zones_page.dart' as _i4;

class AppRoute extends _i1.RootStackRouter {
  AppRoute([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    EmptyRouterRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ClockRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.ClockPage();
        }),
    TimeZonesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.TimezonesPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(EmptyRouterRoute.name, path: '/', children: [
          _i1.RouteConfig(ClockRoute.name, path: ''),
          _i1.RouteConfig(TimeZonesRoute.name, path: 'timezones'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '', fullMatch: true)
      ];
}

class EmptyRouterRoute extends _i1.PageRouteInfo {
  const EmptyRouterRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'EmptyRouterRoute';
}

class ClockRoute extends _i1.PageRouteInfo {
  const ClockRoute() : super(name, path: '');

  static const String name = 'ClockRoute';
}

class TimeZonesRoute extends _i1.PageRouteInfo {
  const TimeZonesRoute() : super(name, path: 'timezones');

  static const String name = 'TimeZonesRoute';
}
