import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colors.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white)),
      textTheme: TextTheme(
          button: ThemeData.light().textTheme.button!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
          caption: ThemeData.light().textTheme.caption!.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
          headline6: ThemeData.light().textTheme.headline6!.copyWith(
                color: ColorConstants.textGray1Color,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
          headline5: ThemeData.light().textTheme.headline5!.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
          headline4: ThemeData.light().textTheme.headline4!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w700),
          headline3: ThemeData.light().textTheme.headline3!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 30,
              fontWeight: FontWeight.w700),
          headline2: ThemeData.light().textTheme.headline2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 36,
              fontWeight: FontWeight.w700),
          headline1: ThemeData.light().textTheme.headline1!.copyWith(
              color: ColorConstants.primaryColor,
              fontSize: 64,
              fontWeight: FontWeight.w700),
          subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(
                color: ColorConstants.textPrimaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
          subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w700),
          bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 11,
              fontWeight: FontWeight.w700),
          bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
              color: ColorConstants.textPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500)));
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}
