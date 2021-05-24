import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
    this.title,
  }) : super(key: key);

  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(5),
          ),
          child: Image.asset(
            image,
            width: 385.24,
            height: 337.95,
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        Spacer(
          flex: 2,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
