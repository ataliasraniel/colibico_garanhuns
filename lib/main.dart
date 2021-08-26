import 'package:colibico_garanhuns/constants.dart';
import 'package:colibico_garanhuns/screens/sign_in_screen/sign_in_screen.dart';
import 'package:colibico_garanhuns/screens/start%20screen/start_screen.dart';
import 'package:colibico_garanhuns/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidthLandscape: 1200,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
            ),
        title: 'Colibico Garanhuns',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: kForegroundColor,
                elevation: 0,
                iconTheme: IconThemeData(color: kDetailColor),
                actionsIconTheme: IconThemeData(color: kDetailColor)),
            accentColor: kForegroundColor,
            fontFamily: 'Montserrat',
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: kBgColor,
            textTheme:
                const TextTheme(bodyText1: TextStyle(color: kDetailColor))),
        routes: {
          StartScreen.screenId: (context) => StartScreen(),
          SignInScreen.screenId: (context) => SignInScreen(),
        },
        home: const SplashScreen());
  }
}
