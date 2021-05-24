import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../models/mobile_platforms.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final platforms = Platform.fetchAll();

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(64),
              ),
              TopProfileInfo(),
              SizedBox(
                height: getProportionateScreenHeight(73),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(31),
              ),
              StatusContainer(),
              SizedBox(
                height: getProportionateScreenHeight(34),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Pending Request",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(34),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                ),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                ),
                decoration: BoxDecoration(color: Colors.transparent),
                height: 435,
                width: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                  ),
                  itemCount: platforms.length,
                  itemBuilder: (context, index) =>
                      _itemBuilder(context, platforms[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationID) {
    // Navigator.pushNamed(context, LocationDetailRoute,
    //     arguments: {"id": locationID});
  }

  Widget _itemBuilder(BuildContext context, Platform platform) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, platform.id),
      child: Container(
        height: getProportionateScreenHeight(100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                platform.imagePath,
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(50),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                getProportionateScreenWidth(15),
                0,
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    platform.name,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    platform.status,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                  Text(
                    platform.dateTime,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(38),
      ),
      height: getProportionateScreenHeight(120),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "12",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Services",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(38),
            ),
            child: VerticalDivider(
              color: Colors.white,
              width: getProportionateScreenWidth(3),
              thickness: 2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "ID Cards",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(38),
            ),
            child: VerticalDivider(
              color: Colors.white,
              width: getProportionateScreenWidth(3),
              thickness: 2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "208",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Requests",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(11),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopProfileInfo extends StatelessWidget {
  const TopProfileInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(38),
            ),
            width: double.infinity,
            height: 305,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(20.61),
                    getProportionateScreenHeight(17.9),
                    0,
                    0,
                  ),
                  height: getProportionateScreenHeight(76),
                  width: getProportionateScreenWidth(76),
                  child: Image.asset("assets/images/Ellipse 90.png"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(3.33),
                    getProportionateScreenHeight(28),
                    0,
                    0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Jonathan Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(9),
                      ),
                      Text(
                        "Trust Score: 2/15",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(38),
              ),
              constraints: BoxConstraints(
                minWidth: getProportionateScreenWidth(300),
                minHeight: getProportionateScreenHeight(155),
                maxWidth: getProportionateScreenWidth(300),
              ),
              height: getProportionateScreenHeight(175),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      getProportionateScreenWidth(26),
                      getProportionateScreenHeight(15),
                      getProportionateScreenWidth(20),
                      0,
                    ),
                    child: Text(
                      "Hey There!, \nComplete your personal data to earn trust scores. Your trust score determines how well organisations can depend on your identity and allows you to access reserved services",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(9),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      getProportionateScreenWidth(26),
                      getProportionateScreenHeight(15),
                      getProportionateScreenWidth(20),
                      0,
                    ),
                    child: Text(
                      "Update Information",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(13),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
