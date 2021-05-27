import 'dart:ui';

import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isPISwitched = false;

  bool isIDSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5).withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(44),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getProportionateScreenHeight(10),
                    width: getProportionateScreenWidth(10),
                    child: Image.asset("assets/images/Group 927.png"),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              Container(
                height: getProportionateScreenHeight(500),
                // width: getProportionateScreenWidth(299),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TopConnectionDecoration(),
                    SizedBox(
                      height: getProportionateScreenHeight(32),
                    ),
                    Container(
                      height: getProportionateScreenHeight(230),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(22),
                          vertical: getProportionateScreenHeight(17),
                        ),
                        children: <Widget>[
                          Container(
                            height: getProportionateScreenHeight(51),
                            child: Text(
                              'Information to Share',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(16)),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Personal Information",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(13),
                                  ),
                                ),
                                Switch(
                                  value: isPISwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isPISwitched = value;
                                      print(isPISwitched);
                                    });
                                  },
                                  activeTrackColor: kPrimaryColor,
                                  activeColor: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ID Card",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(13),
                                  ),
                                ),
                                Switch(
                                  value: isIDSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isIDSwitched = value;
                                      print(isIDSwitched);
                                    });
                                  },
                                  activeTrackColor: kPrimaryColor,
                                  activeColor: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: getProportionateScreenHeight(60),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                            minWidth: getProportionateScreenWidth(130),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color(0xFFE5E5E5).withOpacity(0.1),
                            onPressed: () {},
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  color: Colors.black),
                            ),
                          ),
                          FlatButton(
                            minWidth: getProportionateScreenWidth(130),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: kPrimaryColor,
                            onPressed: () {},
                            child: Text(
                              "Connect",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     DefaultButton(
                    //       text: "Decline",
                    //       press: () {},
                    //     ),
                    //   ],
                    // ),
                    // Row(
                    //   children: [
                    //     DefaultButton(
                    //       text: "Decline",
                    //       press: () {},
                    //     ),
                    //     DefaultButton(
                    //       text: "Connect",
                    //       press: () {},
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopConnectionDecoration extends StatelessWidget {
  const TopConnectionDecoration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(140),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(27),
          0,
          0,
          0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                getProportionateScreenHeight(30),
                0,
                0,
              ),
              child: Container(
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(50),
                child: Image.asset("assets/images/Stanbic.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                getProportionateScreenHeight(16),
                getProportionateScreenHeight(20),
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Stanbic Bank",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(23),
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(4),
                  ),
                  Text(
                    "Stanbic Bank is requesting \nto set up a connection.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(13),
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
