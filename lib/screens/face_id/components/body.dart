import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../finger_print/finger_print_screen.dart';

class Body extends StatelessWidget {
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
            Image.asset(
              "assets/images/Group 1035.png",
              height: getProportionateScreenHeight(291),
              width: getProportionateScreenWidth(230.0),
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: getProportionateScreenHeight(28),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Face Profile.",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Great! Now set up your Face ID. \nRequests will be approved with your \nFacial Profile.",
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
              text: "Scan my Face",
              press: () {
                Navigator.pushNamed(context, FingerPrintScreen.routeName);
              },
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
