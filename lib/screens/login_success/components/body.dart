import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight * 0.4, //40%
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Success",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {},
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
