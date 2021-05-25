import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';
import '../../enums.dart';
import '../../components/custom_buttom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: SvgPicture.asset("assets/icons/bx_bx-menu-alt-left.svg"),
          onPressed: () {},
        ),
        backgroundColor: Color(0xFFE5E5E5).withOpacity(0.1),
        title: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
