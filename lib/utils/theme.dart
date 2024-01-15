import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mycolors {
  static Color lightgreencolor = Vx.green100;
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;
  static Color buttoncolor = Vx.green400;

  static ThemeData lightTheme(BuildContext) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        canvasColor: creamcolor,
        cardColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light).copyWith(secondary: lightgreencolor),
        highlightColor: lightgreencolor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        )
      );

  static ThemeData darkTheme(BuildContext) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
       fontFamily: GoogleFonts.aBeeZee().fontFamily,
        canvasColor: darkcreamcolor,
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(secondary: lightgreencolor),
        highlightColor: lightgreencolor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        )

      );
}
