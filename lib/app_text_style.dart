import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }
  static TextStyle monseratStyle({required Color color}){
    return GoogleFonts.montserrat(
      fontSize: 24,
      color: color,
      fontWeight: FontWeight.w800,
    );
  }
  static TextStyle headingStyles(){
    return GoogleFonts.rubikMonoOne(
      fontSize: 30,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    );
  }
  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 17,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}