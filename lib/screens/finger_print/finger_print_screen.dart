import 'package:flutter/material.dart';
import './components/body.dart';

class FingerPrintScreen extends StatelessWidget {
  static String routeName = "/finger_print";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
