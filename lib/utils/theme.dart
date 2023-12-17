import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mycolors {
  static Color lighgreencolor = Vx.green300;
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;

  static ThemeData lightTheme(BuildContext) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: creamcolor,
        cardColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light).copyWith(secondary: lighgreencolor),
        highlightColor: lighgreencolor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        )
      );

  static ThemeData darkTheme(BuildContext) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: darkcreamcolor,
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(secondary: lighgreencolor),
        highlightColor: lighgreencolor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        )

      );
}
