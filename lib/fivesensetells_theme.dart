import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FiveSenseTellsTheme {
  static TextTheme LightTextTheme = TextTheme(
    bodyText1: GoogleFonts.kosugiMaru(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.brown),
    bodyText2: GoogleFonts.kosugiMaru(
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.brown),
    headline1: GoogleFonts.kosugiMaru(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green[800]),
    headline2: GoogleFonts.kosugiMaru(
        fontSize: 30, fontWeight: FontWeight.normal, color: Colors.brown),
    headline3: GoogleFonts.kosugiMaru(
        fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white70),
    headline4: GoogleFonts.kosugiMaru(
        fontSize: 20, fontWeight: FontWeight.normal, color: Colors.brown),
    headline5: GoogleFonts.kosugiMaru(
        fontSize: 18, fontWeight: FontWeight.normal, color: Colors.brown),
    headline6: GoogleFonts.kosugiMaru(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.brown),
  );

  static ThemeData Light() {
    return ThemeData(
      brightness: Brightness.light,
      bottomAppBarColor: Colors.blueGrey,
      primaryColor: Colors.blueGrey,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.brown),
      textTheme: LightTextTheme,
    );
  }
}
