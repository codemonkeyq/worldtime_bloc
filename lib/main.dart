import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:koin/koin.dart';
import 'package:worldtime_bloc/res/colour.dart';
import 'package:worldtime_bloc/routes/router.gr.dart';

import 'injector/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  startKoin((app) {
    app.printLogger(level: Level.debug);
    app.modules(dev);
  });

  runApp(WorldTimeApp());
}

class WorldTimeApp extends HookWidget {
  WorldTimeApp({Key? key}) : super(key: key);

  final appRoute = AppRoute();

  @override
  Widget build(BuildContext context) {
    useEffect(() {}, []);

    return MaterialApp.router(
        title: 'World Time Clock',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          Locale('zh', 'CN'),
          Locale('es', 'US'),
        ],
        locale: Locale('zh', 'CN'),
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: AppColors.darkBg,
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            cardTheme: CardTheme(
                elevation: 0,
                color: AppColors.darkClockBg,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
        routeInformationParser: appRoute.defaultRouteParser(),
        routerDelegate: appRoute.delegate());
  }
}

