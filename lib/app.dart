import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/activities/activities_screen.dart';
import 'package:web_portfolio/overview/overview_screen.dart';
import 'package:web_portfolio/utilities/app_constants.dart';
import 'package:web_portfolio/utilities/app_style.dart';
import 'package:web_portfolio/utilities/data_loader.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final routeNames = DataLoader.getTextList('navigation_route_names');
    final Map<String, WidgetBuilder> routes = {
      '/${routeNames[0]}': (BuildContext context) => const OverviewScreen(),
      '/${routeNames[1]}': (BuildContext context) => const ActivitiesScreen(),
    };

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
        textTheme: TextTheme(
          headline1: AppStyle.header1Style,
          headline2: AppStyle.header2Style,
          headline3: AppStyle.header3Style,
          headline4: AppStyle.header4Style,
          headline5: AppStyle.header5Style,
          headline6: AppStyle.header6Style,
          bodyText1: AppStyle.mediumTextStyle,
          bodyText2: AppStyle.smallTextStyle,
          button: AppStyle.header6Style.copyWith(color: AppStyle.textColor),
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
      initialRoute: '/${routeNames[0]}',
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
