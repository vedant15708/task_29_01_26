import 'package:flutter/material.dart';

import 'material_app_demo.dart';
import 'material_button_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter button',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
      home: demo1(),
    );
  }
}

//material app properties
// navigatorKey: ,
// scaffoldMessengerKey: ,
// home:,
// routes: ,
// initialRoute: ,
// onGenerateInitialRoutes: ,
// onGenerateRoute: ,
// onUnknownRoute: ,
// onNavigationNotification: ,
// navigatorObservers: [],
// builder: ,
// title:,
// onGenerateTitle: ,
// color: ,
// theme:,
// darkTheme: ,
// highContrastTheme: ,
// highContrastDarkTheme: ,
// themeMode: ,
// themeAnimationDuration: ,
// themeAnimationCurve: ,
// locale: ,
// localizationsDelegates: ,
// localeListResolutionCallback: ,
// localeResolutionCallback: ,
// supportedLocales: ,
// debugShowMaterialGrid: ,
// showPerformanceOverlay: ,
// checkerboardRasterCacheImages: ,
// checkerboardOffscreenLayers: ,
// showSemanticsDebugger: ,
// shortcuts: ,
// actions: ,
// restorationScopeId: ,
// scrollBehavior: ,
// debugShowCheckedModeBanner:,
// useInheritedMediaQuery: ,
// themeAnimationStyle: ,
