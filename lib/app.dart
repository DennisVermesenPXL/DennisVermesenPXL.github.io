import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/overview/overview_screen.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class App extends StatelessWidget {
  App({super.key});

  final Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => const OverviewScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: AppStyle.fontFamily,
        scrollbarTheme: const ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(AppStyle.secondaryColor),
          trackColor: MaterialStatePropertyAll(AppStyle.textColor),
          thickness: MaterialStatePropertyAll(15.0),
          thumbVisibility: MaterialStatePropertyAll(true),
          crossAxisMargin: 0,
          radius: Radius.circular(10),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          minWidth: 300,
          debugLog: true,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScaleDown(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          background: Container(color: AppStyle.lightBackgroundColor),
        );
      },
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: (settings) {
        // Handle unknown routes here
        return MaterialPageRoute(
          builder: (context) => const OverviewScreen(),
        );
      },
    );
  }
}
