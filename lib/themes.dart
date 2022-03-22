import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
      textTheme: TextTheme(
          button: ThemeData.light().textTheme.button!.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: GoogleFonts.roboto().fontFamily),
          caption: ThemeData.light().textTheme.caption!.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline6: ThemeData.light().textTheme.headline6!.copyWith(
              color: ColorConstants.textGray1Color,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline5: ThemeData.light().textTheme.headline5!.copyWith(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline4: ThemeData.light().textTheme.headline4!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline3: ThemeData.light().textTheme.headline3!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline2: ThemeData.light().textTheme.headline2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 36,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          headline1: ThemeData.light().textTheme.headline1!.copyWith(
              color: ColorConstants.primaryColor,
              fontSize: 64,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 11,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w700),
          bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 11,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.roboto().fontFamily),
          bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.roboto().fontFamily)));
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}
