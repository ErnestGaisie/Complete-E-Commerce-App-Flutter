import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';

import 'components/body.dart';
import '../../enums.dart';
import '../../components/custom_buttom_nav_bar.dart';

class ConnectionsScreen extends StatelessWidget {
  static String routeName = "/connections";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFE5E5E5).withOpacity(0.1),
        title: Text(
          "Services",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/AddServices.svg",
                    color: kPrimaryColor,
                  ),
                  onPressed: () {},
                ),
              )),
        ],
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.connections,
      ),
    );
  }
}
