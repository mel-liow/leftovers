import 'package:flutter/material.dart';

final ThemeData appThemeData = new ThemeData(
    brightness: Brightness.light,
    primarySwatch:
        MaterialColor(CompanyColors.green[50].value, CompanyColors.green),
    primaryColor: CompanyColors.green[500],
    primaryColorBrightness: Brightness.light,
    accentColor: CompanyColors.beige[500],
    cardTheme: CardTheme(
      color: CompanyColors.beige[500],
      shadowColor: CompanyColors.mustard[500],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    accentColorBrightness: Brightness.light,
    fontFamily: 'FuturaPt',
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 36.0, fontFamily: 'FreightDisplay', color: Colors.white),
      headline2: TextStyle(fontSize: 24.0),
      bodyText1: TextStyle(
          fontSize: 16.0,
          fontFamily: 'FuturaPT',
          color: CompanyColors.black[900]),
      bodyText2: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
    ));

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> green = const <int, Color>{
    50: const Color(0xffF1F6F1),
    100: const Color(0xffDDE8DB),
    200: const Color(0xffC6D9C4),
    300: const Color(0xffAFC9AC),
    400: const Color(0xff9EBE9A),
    500: const Color(0xff8DB288),
    600: const Color(0xff85AB80),
    700: const Color(0xff7AA275),
    800: const Color(0xff70996B),
    900: const Color(0xff5D8A58)
  };

  static const Map<int, Color> mustard = const <int, Color>{
    50: const Color(0xfffcf5ed),
    100: const Color(0xfff7e7d1),
    200: const Color(0xfff2d7b3),
    300: const Color(0xffedc795),
    400: const Color(0xffe9bb7e),
    500: const Color(0xffe5af67),
    600: const Color(0xffe2a85f),
    700: const Color(0xffde9f54),
    800: const Color(0xffda964a),
    900: const Color(0xffd38639)
  };

  static const Map<int, Color> black = const <int, Color>{
    50: const Color(0xffEDEDED),
    100: const Color(0xffD1D1D1),
    200: const Color(0xffB2B2B2),
    300: const Color(0xff939393),
    400: const Color(0xff7C7C7C),
    500: const Color(0xff656565),
    600: const Color(0xff5D5D5D),
    700: const Color(0xff535353),
    800: const Color(0xff494949),
    900: const Color(0xff373737)
  };

  static const Map<int, Color> beige = const <int, Color>{
    50: const Color(0xffFEFAF5),
    100: const Color(0xffFEFAF5),
    200: const Color(0xffFAE9D4),
    300: const Color(0xffF7E0C3),
    400: const Color(0xffF6DAB6),
    500: const Color(0xffF4D3A9),
    600: const Color(0xffF3CEA2),
    700: const Color(0xffF1C898),
    800: const Color(0xffEFC28F),
    900: const Color(0xffECB77E)
  };
}
