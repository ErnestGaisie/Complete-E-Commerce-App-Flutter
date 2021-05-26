import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class AddAConnectionScreen extends StatelessWidget {
  static String routeName = "/add_a_connection";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: SvgPicture.asset("assets/icons/Cancel.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Add a Service",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/idea.svg",
                    color: kPrimaryColor,
                  ),
                  onPressed: () {},
                ),
              )),
        ],
      ),
      body: Body(),
    );
  }
}
