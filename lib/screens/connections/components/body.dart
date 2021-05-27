import 'package:complete_e_commerce_app_flutter/screens/connections_details/mtn_connection_details/mtn_connection_details_screen.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

import '../../connections_details/stanbic_connection_details/stanbic_connection_details_screen.dart';
import '../../connections_details/nss_connection_details/nss_connection_details_screen.dart';
import '../../connections_details/ssnit_connection_details/ssnit_connection_details_screen.dart';
import '../../connections_details/ug_connection_details/ug_connection_details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5).withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(39),
              ),
              Text(
                "Connected Services",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: ServiceContainer(
                      title: "Stanbic \nBank",
                      text: "Universal Bank",
                      image: "assets/images/StanbicRound.png",
                      color: Color(0xFF083ABC),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, StanbicConnectionDetailsScreen.routeName);
                    },
                  ),
                  ServiceContainer(
                    title: "Vodafone \nCash",
                    text: "Mobile Money Service",
                    image: "assets/images/VodaRound.png",
                    color: Color(0xFFEA0000),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(11),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: ServiceContainer(
                      title: "MTN Mobile \nMoney",
                      text: "Mobile Money Service",
                      image: "assets/images/MTNRound.png",
                      color: Color(0xFFFFCB05),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, MTNConnectionDetailsScreen.routeName);
                    },
                  ),
                  GestureDetector(
                    child: ServiceContainer(
                      title: "University \nof Ghana",
                      text: "Tertiary Institution",
                      image: "assets/images/UGRound.png",
                      color: Color(0xFF1F5CA8),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, UGConnectionDetailsScreen.routeName);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(11),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: ServiceContainer(
                      title: "NSS",
                      text: "National Service \nScheme",
                      image: "assets/images/NSSRound.png",
                      color: Color(0xFF000000),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, NSSConnectionDetailsScreen.routeName);
                    },
                  ),
                  GestureDetector(
                    child: ServiceContainer(
                      title: "SSNIT",
                      text: "Insurance Trust",
                      image: "assets/images/SSNITRound.png",
                      color: Color(0xFFF96525),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, SSNITConnectionDetailsScreen.routeName);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceContainer extends StatelessWidget {
  const ServiceContainer(
      {Key key, this.text, this.image, this.title, this.color})
      : super(key: key);

  final String title, text, image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(150),
      width: getProportionateScreenWidth(150),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, getProportionateScreenHeight(13),
                getProportionateScreenWidth(13), 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  image,
                  height: getProportionateScreenHeight(42),
                  width: getProportionateScreenWidth(42),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(getProportionateScreenWidth(14), 0, 0, 0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(getProportionateScreenWidth(14), 0, 0, 0),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
