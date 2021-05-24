import 'package:complete_e_commerce_app_flutter/components/custom_suffix_icon.dart';
import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/components/form_error.dart';
import 'package:complete_e_commerce_app_flutter/components/social_card.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/screens/sign_up/components/sign_up_form.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02, //8% of total height
                ),
                Text(
                  "Register Account",
                  style: headingStyle,
                ),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.07, //8% of total height
                ),
                SignUpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.07, //8% of total height
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "By continuing you confirm that you agree \nwith our Term and Conditions",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )),
    );
  }
}
