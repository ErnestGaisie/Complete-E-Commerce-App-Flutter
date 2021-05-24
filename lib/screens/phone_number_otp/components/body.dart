import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../face_id/face_id_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE5E5E5).withOpacity(0.3),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(17),
              vertical: getProportionateScreenHeight(30)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    BackButton(),
                  ],
                ),
                Image.asset(
                  "assets/images/Group 772.png",
                ),
                Text(
                  "Verify Phone Number.",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(36),
                ),
                Text(
                  "Enter the 6 digit code sent to \n+233 55 252 3469",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(61),
                ),
                OtpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;
  FocusNode pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
    super.dispose();
  }

  void nexField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    nexField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    nexField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    nexField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    nexField(value: value, focusNode: pin5FocusNode);
                  },
                ),
              ),
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  focusNode: pin5FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    nexField(value: value, focusNode: pin6FocusNode);
                  },
                ),
              ),
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  focusNode: pin6FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(13),
                      horizontal: getProportionateScreenWidth(12),
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: kTextColor),
                    // ),
                  ),
                  onChanged: (value) {
                    pin6FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(61),
          ),
          GestureDetector(
            onTap: () {
              //resendcode
            },
            child: Text(
              "Resend Code",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: getProportionateScreenWidth(15),
                color: kPrimaryColor,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(59),
          ),
          DefaultButton(
            text: "Confirm",
            press: () {
              Navigator.pushNamed(context, FaceIdScreen.routeName);
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(23),
          ),
          Text(
            "by clicking confirm you agree to our Privacy Policy \nour Terms and Conditions",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
