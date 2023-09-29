import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      headline3: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize:24,
      ),
  );

  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
    headline3: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize:24,
      ),
  );

  static TextTheme systemTextTheme = TextTheme
}