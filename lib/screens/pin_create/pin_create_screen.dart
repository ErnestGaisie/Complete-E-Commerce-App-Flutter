import 'package:flutter/material.dart';
import 'components/body.dart';

class PinCreateScreen extends StatelessWidget {
  static String routeName = "/pin_create";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
