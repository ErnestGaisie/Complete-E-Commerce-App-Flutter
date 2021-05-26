import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

import 'body/body.dart';

class ConnectionRequestScreen extends StatelessWidget {
  static String routeName = "/connection_request";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: new IconButton(
      //     icon: SvgPicture.asset("assets/icons/Cancel.svg"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: Body(),
    );
  }
}
