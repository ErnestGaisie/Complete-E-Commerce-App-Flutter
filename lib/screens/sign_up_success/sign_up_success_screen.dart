import 'package:flutter/material.dart';
import './components/body.dart';

class SignUpSuccessScreen extends StatelessWidget {
  static String routeName = "/sign_up_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
