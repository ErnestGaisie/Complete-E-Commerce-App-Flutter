import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';
import '../../sign_up_success/sign_up_success_screen.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OtpScreen(),
    );
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<String> currentPin = ["", "", "", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  TextEditingController pinFiveController = TextEditingController();
  TextEditingController pinSixController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(9.0),
    borderSide: BorderSide(
      color: kPrimaryColor,
      width: 2,
    ),
  );

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(26),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create a pin!",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You will use this to login next time",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(54),
          ),
          buildPinRow(),
          SizedBox(
            height: getProportionateScreenHeight(54),
          ),
          buildNumberPad(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(18)),
            child: DefaultButton(
              text: "Save PIN",
              press: () {
                Navigator.pushNamed(context, SignUpSuccessScreen.routeName);
              },
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(52),
          ),
        ],
      ),
    );
  }

  buildNumberPad() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup("1");
                    },
                  ),
                  KeyboardNumber(
                    n: 2,
                    onPressed: () {
                      pinIndexSetup("2");
                    },
                  ),
                  KeyboardNumber(
                    n: 3,
                    onPressed: () {
                      pinIndexSetup("3");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 4,
                    onPressed: () {
                      pinIndexSetup("4");
                    },
                  ),
                  KeyboardNumber(
                    n: 5,
                    onPressed: () {
                      pinIndexSetup("5");
                    },
                  ),
                  KeyboardNumber(
                    n: 6,
                    onPressed: () {
                      pinIndexSetup("6");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 7,
                    onPressed: () {
                      pinIndexSetup("7");
                    },
                  ),
                  KeyboardNumber(
                    n: 8,
                    onPressed: () {
                      pinIndexSetup("8");
                    },
                  ),
                  KeyboardNumber(
                    n: 9,
                    onPressed: () {
                      pinIndexSetup("9");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      onPressed: null,
                      child: SizedBox(),
                    ),
                  ),
                  KeyboardNumber(
                    n: 0,
                    onPressed: () {
                      pinIndexSetup("0");
                    },
                  ),
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      onPressed: () {
                        clearPin();
                      },
                      child: Text(
                        "delete",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  clearPin() {
    if (pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 6) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0)
      pinIndex = 1;
    else if (pinIndex < 6) pinIndex++;
    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    currentPin.forEach((e) {
      strPin += e;
    });
    if (pinIndex == 6) print(strPin);
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinFiveController.text = text;
        break;
      case 6:
        pinSixController.text = text;
        break;
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinOneController,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinTwoController,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinThreeController,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinFourController,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
              outlineInputBorder: outlineInputBorder,
              textEditingController: pinFiveController),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinSixController,
          ),
        ),
      ],
    );
  }
}

class PinNumber extends StatefulWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

  PinNumber({this.textEditingController, this.outlineInputBorder});

  @override
  _PinNumberState createState() => _PinNumberState();
}

class _PinNumberState extends State<PinNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.0,
      width: 18.0,
      // decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: TextFormField(
          controller: widget.textEditingController,
          enabled: false,
          // obscureText: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(13),
              horizontal: getProportionateScreenWidth(12),
            ),
            fillColor: widget.textEditingController.text.length > 0
                ? kPrimaryColor
                : Colors.white,
            border: widget.outlineInputBorder,
            focusedBorder: widget.outlineInputBorder,
            enabledBorder: widget.outlineInputBorder,
            filled: true,
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({this.n, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: kPrimaryColor, width: 1)),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.8),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(68.0),
        ),
        height: 90,
        child: Text(
          "$n",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24 * MediaQuery.of(context).textScaleFactor,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
