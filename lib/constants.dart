import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF7165E3);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//Form Error
final RegExp emailValidationRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

// class Constants {
//   static List<Locale> locales = [
//     Locale("af"),
//     Locale("am"),
//     Locale("ar"),
//     Locale("az"),
//     Locale("be"),
//     Locale("bg"),
//     Locale("bn"),
//     Locale("bs"),
//     Locale("ca"),
//     Locale("cs"),
//     Locale("da"),
//     Locale("de"),
//     Locale("el"),
//     Locale("en"),
//     Locale("es"),
//     Locale("et"),
//     Locale("fa"),
//     Locale("fi"),
//     Locale("fr"),
//     Locale("gl"),
//     Locale("ha"),
//     Locale("he"),
//     Locale("hi"),
//     Locale("hr"),
//     Locale("hu"),
//     Locale("hy"),
//     Locale("id"),
//     Locale("is"),
//     Locale("it"),
//     Locale("ja"),
//     Locale("ka"),
//     Locale("kk"),
//     Locale("km"),
//     Locale("ko"),
//     Locale("ku"),
//     Locale("ky"),
//     Locale("lt"),
//     Locale("lv"),
//     Locale("mk"),
//     Locale("ml"),
//     Locale("mn"),
//     Locale("ms"),
//     Locale("nb"),
//     Locale("nl"),
//     Locale("nn"),
//     Locale("no"),
//     Locale("pl"),
//     Locale("ps"),
//     Locale("pt"),
//     Locale("ro"),
//     Locale("ru"),
//     Locale("sd"),
//     Locale("sk"),
//     Locale("sl"),
//     Locale("so"),
//     Locale("sq"),
//     Locale("sr"),
//     Locale("sv"),
//     Locale("ta"),
//     Locale("tg"),
//     Locale("th"),
//     Locale("tk"),
//     Locale("tr"),
//     Locale("tt"),
//     Locale("uk"),
//     Locale("ug"),
//     Locale("ur"),
//     Locale("uz"),
//     Locale("vi"),
//     Locale("zh")
//   ];
// }
