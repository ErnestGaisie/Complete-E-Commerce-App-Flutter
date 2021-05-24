import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/screens/home/home_screen.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(67),
          ),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(204.49),
            child: Image.asset("assets/images/Group 915.png"),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Text(
            "You're all set!",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(12),
          ),
          Text(
            "Continue to go to the Homepage.",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: getProportionateScreenHeight(64),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(49),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Group 45.png")),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: Text(
                        "Phone Number Verified",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(14),
                ),
                Row(
                  children: [
                    Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/images/Group 45.png")),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: Text(
                        "Biometrics Activated",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(14),
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      child: Image.asset("assets/images/Group 45.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: Text(
                        "Secure Credentials Created",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(120),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(18),
            ),
            child: DefaultButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          )
        ],
      ),
    );
  }
}
