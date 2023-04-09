import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/overview/overview_screen.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: AppStyle.fontFamily,
        dividerTheme: const DividerThemeData(
          thickness: 3.0,
          color: AppStyle.lightBackgroundColor,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: AppStyle.accentColor,
          selectionHandleColor: AppStyle.primaryColor,
          cursorColor: AppStyle.primaryColor,
        ),
        scrollbarTheme: const ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(AppStyle.primaryColor),
          trackColor: MaterialStatePropertyAll(AppStyle.lightBackgroundColor),
          thickness: MaterialStatePropertyAll(10.0),
          thumbVisibility: MaterialStatePropertyAll(true),
          trackVisibility: MaterialStatePropertyAll(true),
          crossAxisMargin: 0,
          radius: Radius.circular(10),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: AppStyle.primaryColor,
          hoverColor: AppStyle.accentColor,
          focusColor: AppStyle.accentColor,
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
          background: Container(color: AppStyle.darkBackgroundColor),
        );
      },
      initialRoute: AppConstants.routes.keys.first,
      routes: AppConstants.routes,
      onGenerateRoute: (settings) {
        // Handle unknown routes here
        return MaterialPageRoute(
          builder: (context) => const OverviewScreen(),
        );
      },
    );
  }
}
