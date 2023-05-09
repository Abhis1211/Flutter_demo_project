import 'package:flutter/material.dart';
const Outfit = "Outfit";
const Chillax = "Chillax";
const font = '';
mixin TextStyles {
  static TextStyle Dynamic({TextStyle? style, fontfamily, Color? color}) {
    return TextStyle(
      fontSize: style!.fontSize,
      fontFamily: fontfamily,
      fontWeight: style.fontWeight,
      color: color,
      
    );
  }

  static TextStyle withColor(TextStyle style, Color color, [double? height]) {
    return TextStyle(
      fontSize: style.fontSize,
      fontWeight: style.fontWeight,
      color: color,
      height: height,
    );
  }

  static TextStyle withletterspacing(
      TextStyle style, Color color, double spacing,
      [double? height]) {
    return TextStyle(
      height: height,
      fontFamily: style.fontFamily,
      fontSize: style.fontSize,
      fontWeight: style.fontWeight,
      letterSpacing: spacing,
      color: color,
    );
  }
// fontweilght bold

  static const TextStyle mb10 = TextStyle(
    fontSize: 10,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb11 = TextStyle(
    fontSize: 11,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb12 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb14 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb16 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb18 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb20 = TextStyle(
    fontSize: 20,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb24 = TextStyle(
    fontSize: 24,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle mb26 = TextStyle(
    fontSize: 26,
    fontFamily: Outfit,
    fontWeight: FontWeight.bold,
  );

  //font weight 500
  static const TextStyle mw50010 = TextStyle(
    fontSize: 10,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50011 = TextStyle(
    fontSize: 11,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50012 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50014 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50016 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50018 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50020 = TextStyle(
    fontSize: 20,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50024 = TextStyle(
    fontSize: 24,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle mw50026 = TextStyle(
    fontSize: 26,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle mw50036 = TextStyle(
    fontSize: 36,
    fontFamily: Outfit,
    fontWeight: FontWeight.w500,
  );

  //fontweight 700

  static const TextStyle mw70032 = TextStyle(
    fontSize: 32,
    fontFamily: Outfit,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle mw70036 = TextStyle(
    fontSize: 36,
    fontFamily: Outfit,
    fontWeight: FontWeight.w700,
  );

  //fontweight 400
  static const TextStyle mw40028 = TextStyle(
    fontSize: 28,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40021 = TextStyle(
    fontSize: 21,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40018 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40017 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40016 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40014 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40012 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40013 = TextStyle(
    fontSize: 13,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mw40010 = TextStyle(
    fontSize: 10,
    fontFamily: Outfit,
    fontWeight: FontWeight.w400,
  );

  //fontweight 600
  static const TextStyle mw60024 = TextStyle(
    fontSize: 24,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60021 = TextStyle(
    fontSize: 21,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60018 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60016 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60014 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60012 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60013 = TextStyle(
    fontSize: 13,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle mw60010 = TextStyle(
    fontSize: 10,
    fontFamily: Outfit,
    fontWeight: FontWeight.w600,
  );

  // fontweight normal
  static const TextStyle mn10 = TextStyle(
    fontSize: 10,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn12 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn14 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn16 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn18 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn20 = TextStyle(
    fontSize: 20,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn24 = TextStyle(
    fontSize: 24,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle mn26 = TextStyle(
    fontSize: 26,
    fontFamily: Outfit,
    fontWeight: FontWeight.normal,
  );

  // fontweight 300

  static const TextStyle ml12 = TextStyle(
    fontSize: 12,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle ml14 = TextStyle(
    fontSize: 14,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle ml16 = TextStyle(
    fontSize: 16,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle ml18 = TextStyle(
    fontSize: 18,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle ml20 = TextStyle(
    fontSize: 20,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle ml24 = TextStyle(
    fontSize: 24,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle ml26 = TextStyle(
    fontSize: 26,
    fontFamily: Outfit,
    fontWeight: FontWeight.w300,
  );
}
