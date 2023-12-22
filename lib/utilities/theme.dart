import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Color scheme
/// https://colorhunt.co/palette/053b50176b8764ccc5eeeeee
/// darkest 0xFF053B50
/// dark 0xFF176B87
/// medium 0xFF64CCC5
/// light 0xFFEEEEEE
String fontValue = 'GoogleFonts.roboto()';

double calculateAdjustedFontSize(double baseFontSize, BuildContext context) {
  return baseFontSize * MediaQuery.of(context).textScaleFactor;
}

final appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.roboto().fontFamily,

// Define the default brightness and colors.
  colorScheme: ColorScheme.fromSeed(
    // seedColor: const Color(0xFF176B87),
    seedColor: Colors.white,
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: const Color(0xFFE5E8E8),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    // fillColor: Colors.white,
    // fillColor: Color(0xFF053B50),
    fillColor: Color(0xFF34495E),
    focusColor: Color(0xFFEEEEEE),
    hoverColor: Color(0xFFEEEEEE),
    prefixIconColor: Color(0xFFFFFFFF),
    prefixStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
    floatingLabelStyle: TextStyle(
      color: Color(0xFF34495E),
    ),
    labelStyle: TextStyle(
      color: Color(0xFF34495E),
    ),
    hintStyle: TextStyle(
      color: Color(0xFFFFFFFF),
    ),
    helperStyle: TextStyle(
      color: Color(0xFF34495E),
    ),
  ),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(
      size: 40.0,
      weight: 400.0,
      fill: 1.0,
      color: Color(0xFFFFFFFF),
      opacity: 1.0,
    ),
    iconTheme: IconThemeData(
      size: 40.0,
      weight: 900.0,
      fill: 1.0,
      color: Color(0xFFFFFFFF),
      opacity: 1.0,
    ),
    elevation: 4,
    centerTitle: true,
    backgroundColor: Color(0xFF176B87),
    foregroundColor: Colors.white,
  ),

  textTheme: TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 24,
      color: const Color(0xFFFFFFFF),
    ),
    bodyMedium: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: const Color(0xFF000000),
    ),
    bodySmall: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: const Color(0xFFFFFFFF),
    ),
    displayLarge: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: const Color(0xFFFFFFFF),
    ),
    displayMedium: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: const Color(0xFFFFFFFF),
    ),
    displaySmall: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: const Color(0xFFFFFFFF),
    ),
    titleLarge: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 40,
      color: const Color(0xFF000000),
    ),
    titleMedium: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: const Color(0xFF000000),
    ),
    titleSmall: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: const Color(0xFF000000),
    ),
  ),
  listTileTheme: ListTileThemeData(
    dense: true,
    visualDensity: const VisualDensity(vertical: -3, horizontal: -3),
    textColor: Colors.white,
    titleTextStyle: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 10.0,
      color: const Color(0xFFFFFFFF),
    ),
    subtitleTextStyle: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 10,
        color: const Color(0xFFEEEEEE)),
    tileColor: const Color(0xFF053B50),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 2),
      borderRadius: BorderRadius.circular(10),
      //border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
    ),
  ),
);
