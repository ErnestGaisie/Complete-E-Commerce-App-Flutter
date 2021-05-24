import 'package:flutter/material.dart';
import './components/body.dart';

class FaceIdScreen extends StatelessWidget {
  static String routeName = "/face_id";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
