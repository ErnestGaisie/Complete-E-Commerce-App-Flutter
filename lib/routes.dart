import 'package:complete_e_commerce_app_flutter/screens/add_a_connection/add_a_connection_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/complete_profile/complete_profile_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/connections_details/mtn_connection_details/mtn_connection_details_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/face_id/face_id_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/home/home_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/login_success/login_success_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/phone_number_registration/phone_number_registration_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/pin_create/pin_create_screen.dart';
import 'package:complete_e_commerce_app_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';
import './screens/splash/splash_screen.dart';
import './screens/sign_in/sign_in_screen.dart';
import './screens/phone_number_otp/phone_number_otp_screen.dart';
import 'screens/face_id/face_id_screen.dart';
import 'screens/finger_print/finger_print_screen.dart';
import './screens/sign_up_success/sign_up_success_screen.dart';
import './screens/connections/connections_screen.dart';
import 'screens/connection_request/connection_request_screen.dart';
import 'screens/connections_details/stanbic_connection_details/stanbic_connection_details_screen.dart';
import 'screens/connections_details/nss_connection_details/nss_connection_details_screen.dart';
import 'screens/connections_details/ssnit_connection_details/ssnit_connection_details_screen.dart';
import 'screens/connections_details/ug_connection_details/ug_connection_details_screen.dart';
//We use name route
//All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  PhoneNumberRegScreen.routeName: (context) => PhoneNumberRegScreen(),
  PhoneNumberOtpScreen.routeName: (context) => PhoneNumberOtpScreen(),
  FaceIdScreen.routeName: (contex) => FaceIdScreen(),
  FingerPrintScreen.routeName: (context) => FingerPrintScreen(),
  PinCreateScreen.routeName: (context) => PinCreateScreen(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ConnectionsScreen.routeName: (context) => ConnectionsScreen(),
  AddAConnectionScreen.routeName: (context) => AddAConnectionScreen(),
  ConnectionRequestScreen.routeName: (context) => ConnectionRequestScreen(),
  MTNConnectionDetailsScreen.routeName: (context) =>
      MTNConnectionDetailsScreen(),
  StanbicConnectionDetailsScreen.routeName: (context) =>
      StanbicConnectionDetailsScreen(),
  NSSConnectionDetailsScreen.routeName: (context) =>
      NSSConnectionDetailsScreen(),
  SSNITConnectionDetailsScreen.routeName: (context) =>
      SSNITConnectionDetailsScreen(),
  UGConnectionDetailsScreen.routeName: (context) => UGConnectionDetailsScreen(),
};
