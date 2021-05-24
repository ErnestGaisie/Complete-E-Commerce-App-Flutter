import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/screens/phone_number_registration/phone_number_registration_screen.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

//This is the best practice
import './splash_content.dart';
import '../../../components/default_button.dart';
import '../../sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Trustur",
      "text": "Borderless Security and Identity",
      "image": "assets/images/Carousel1.png"
    },
    {
      "title": "Multi-Factor Security",
      "text":
          "Built on trusted military grade encryption \nfor secure, out of and authentication.",
      "image": "assets/images/Carousel2.png"
    },
    {
      "title": "ID Authority Verification",
      "text":
          "Manage KYC and identity credentials from \nmultiple sources in one place",
      "image": "assets/images/Carousel3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                      title: splashData[index]["title"],
                      text: splashData[index]["text"],
                      image: splashData[index]["image"],
                    )),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    DefaultButton(
                      text: currentPage == 2 ? "Get Started" : "Next",
                      press: () {
                        if (currentPage == 0) {
                          currentPage = 1;
                        } else if (currentPage == 1) {
                          currentPage = 2;
                        } else {
                          Navigator.pushNamed(
                              context, PhoneNumberRegScreen.routeName);
                        }
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
