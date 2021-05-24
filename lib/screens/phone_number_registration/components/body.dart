import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../phone_number_otp/phone_number_otp_screen.dart';

class Body extends StatelessWidget {
  final FocusNode passwordNode = FocusNode();

  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      color: Color(0xFFE5E5E5).withOpacity(0.3),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                BackButton(),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(8.0)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(33.0)),
              child: Image(
                image: AssetImage(
                  'assets/images/Group 769.png',
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5.51)),
            Text(
              'Welcome',
              style: TextStyle(
                height: 1.4,
                fontFamily: 'Montserrat',
                color: Colors.black.withOpacity(0.5),
                fontSize: getProportionateScreenWidth(24.0),
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(36.0)),
            Text(
              'Enter your phone number to get \nstarted!',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.4,
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(43.0),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              // color: Colors.white,
              // decoration: BoxDecoration(shape: BoxShape.circle),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'GH',
                      favorite: ['+233', 'GH'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(16),
                      ),
                      child: VerticalDivider(
                        thickness: 2,
                        width: getProportionateScreenWidth(1),
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.black,

                        // autofocus: true, //state is! LoginLoading ?
                        keyboardType: TextInputType.text,
                        controller: _usernameController,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          letterSpacing: 0.5,
                          fontSize: getProportionateScreenWidth(16.0),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: getProportionateScreenWidth(12),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(passwordNode);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(70)),
            DefaultButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, PhoneNumberOtpScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(19.0)),
            Text(
              'Already have an account? - Sign In',
              softWrap: true,
              style: TextStyle(
                height: 1.4,
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
