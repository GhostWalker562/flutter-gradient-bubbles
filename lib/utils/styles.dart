import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static bool isDark = true;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: Colors.white,
      onSurface: const Color(0xff222222),
      primary: const Color(0xffce4a4f),
      primaryVariant: const Color(0xffe07356),
      secondary: const Color(0xff2b2540),
      secondaryVariant: const Color(0xff483F6C),
      onSecondary: Colors.white,
      background: const Color(0xfff3f6f9),
      onBackground: const Color(0xff222222),
    ),
    textTheme: GoogleFonts.muliTextTheme(),
    dividerColor: const Color(0xff6C6F8D),
    scaffoldBackgroundColor: const Color(0xfff3f6f9),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      surface: const Color(0xff121212),
      onSurface: Colors.white,
      primary: const Color(0xffce4a4f),
      onPrimary: Colors.white,
      primaryVariant: const Color(0xffe07356),
      secondary: const Color(0xff2b2540),
      secondaryVariant: const Color(0xff483F6C),
      onSecondary: Colors.white,
      background: const Color(0xff222222),
      onBackground: const Color(0xfff3f6f9),
    ),
    textTheme: GoogleFonts.muliTextTheme(),
    dividerColor: const Color(0xff48445D),
    scaffoldBackgroundColor: const Color(0xff222222),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  ThemeData get theme => isDark ? darkTheme : lightTheme;
}
