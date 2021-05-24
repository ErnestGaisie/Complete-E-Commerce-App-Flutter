import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/screens/pin_create/pin_create_screen.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import '../../../api/local_auth_api.dart';

enum AuthStatus { INITIAL, SUCCESS, FAILURE }

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AuthStatus fingerprintStatus;
  // LocalAuthentication auth = LocalAuthentication();
  // bool _canCheckBiometric;
  // List<BiometricType> _availableBiometrics;
  // String _authorized = "Not authorized";

  // Future<void> _checkBiometric() async {
  //   bool canCheckBiometric;
  //   try {
  //     canCheckBiometric = await auth.canCheckBiometrics;
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }

  //   if (!mounted) return;
  //   setState(() {
  //     _canCheckBiometric = canCheckBiometric;
  //   });
  // }

  // Future<void> _getAvailableBiometric() async {
  //   List<BiometricType> availableBiometric;

  //   try {
  //     availableBiometric = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }
  //   if (!mounted) return;

  //   setState(() {
  //     _availableBiometrics = availableBiometric;
  //   });
  // }

  // Future<void> _authenticate() async {
  //   bool authenticated = false;

  //   try {
  //     // ignore: deprecated_member_use
  //     authenticated = await auth.authenticateWithBiometrics(
  //       localizedReason: "Scan your finger to authenticate",
  //       useErrorDialogs: true,
  //       stickyAuth: false,
  //     );
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }

  //   if (!mounted) return;

  //   setState(() {
  //     _authorized =
  //         authenticated ? "Authorized success" : "Failed to authenticate";
  //     print(_authorized);
  //   });
  // }
  String getAuthText(AuthStatus status) {
    String text = '';
    switch (status) {
      case AuthStatus.INITIAL:
        text =
            "Almost Done! \nActivate your finger print.Requests will be \napproved with your Facial Profile.";
        break;
      case AuthStatus.SUCCESS:
        text = "Fingerprint Setup successful!";
        break;
      case AuthStatus.FAILURE:
        text = "Sorry, fingerprint \ndid not match. Please try again.";
        break;
      default:
        text =
            "Almost Done! \nActivate your finger print.Requests will be \napproved with your Facial Profile.";
    }
    return text;
  }

  String getImagePath(AuthStatus status) {
    String path = '';
    switch (status) {
      case AuthStatus.INITIAL:
        path = "assets/images/Finger ID Access.png";
        break;
      case AuthStatus.SUCCESS:
        path = "assets/images/Finger ID AccessGreen.png";
        break;
      case AuthStatus.FAILURE:
        path = "assets/images/Finger ID AccessRed.png";
        break;
      default:
        path = "assets/images/Finger ID Access.png";
    }
    return path;
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    // _checkBiometric();
    // _getAvailableBiometric();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(100.0),
            ),
            SizedBox(
              child: Center(
                child: Image.asset(
                  getImagePath(fingerprintStatus),
                  // "assets/images/Finger ID Access.png",
                  height: getProportionateScreenHeight(267),
                  width: getProportionateScreenWidth(267.0),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(28),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fingerprint",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // if (fingerprintStatus == true)
                //   {
                //     Text(
                //       "Fingerprint Setup successful!",
                //       style: TextStyle(
                //         fontSize: getProportionateScreenWidth(15),
                //         color: Colors.grey,
                //       ),
                //       textAlign: TextAlign.center,
                //     ),
                //   }
                // else if (fingerprintStatus == false)
                //   {
                //     Text(
                //       "Sorry, fingerprint \ndid not match. Please try again.",
                //       style: TextStyle(
                //         fontSize: getProportionateScreenWidth(15),
                //         color: Colors.grey,
                //       ),
                //       textAlign: TextAlign.center,
                //     ),
                //   }
                // else
                //   {
                Text(
                  getAuthText(fingerprintStatus),
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Spacer(),
            DefaultButton(
              text: "Activate Fingerprint",
              press: () async {
                // _authenticate();
                // final isAuthenticated = await LocalAuthApi.authenticate();
                // if (isAuthenticated) {
                //   print("Aauthenticated");
                //   setState(() {
                //     fingerprintStatus = AuthStatus.SUCCESS;
                //   });
                //   Navigator.pushNamed(context, PinCreateScreen.routeName);
                // } else {
                //   print("Nigga stop stealing");
                //   setState(() {
                //     fingerprintStatus = AuthStatus.FAILURE;
                //   });
                // }
                Navigator.pushNamed(context, PinCreateScreen.routeName);
              },
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
