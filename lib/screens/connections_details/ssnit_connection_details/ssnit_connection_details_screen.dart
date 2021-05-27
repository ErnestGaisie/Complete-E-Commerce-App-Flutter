import 'package:flutter/material.dart';
import 'components/body.dart';

import '../../../size_config.dart';

class SSNITConnectionDetailsScreen extends StatelessWidget {
  static String routeName = "/ssnit_connection_details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5).withOpacity(0.1),
        title: Text(
          "Service Connection Details",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
