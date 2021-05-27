import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isBISwitched = false;

  bool isKYCSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE5E5E5).withOpacity(0.1),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              TopConnectionInfoComponent(),
              SizedBox(
                height: getProportionateScreenHeight(26),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(38),
                ),
                child: Container(
                  height: getProportionateScreenHeight(200),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(22),
                    ),
                    children: <Widget>[
                      Container(
                        height: getProportionateScreenHeight(50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Access',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Container(
                        height: getProportionateScreenHeight(50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Basic Information',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: getProportionateScreenWidth(13),
                              ),
                            ),
                            Switch(
                              value: isBISwitched,
                              onChanged: (value) {
                                setState(() {
                                  isBISwitched = value;
                                  print(isBISwitched);
                                });
                              },
                              activeTrackColor: kPrimaryColor,
                              activeColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Container(
                        height: getProportionateScreenHeight(50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Advanced KYC',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: getProportionateScreenWidth(13),
                              ),
                            ),
                            Switch(
                              value: isKYCSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isKYCSwitched = value;
                                  print(isKYCSwitched);
                                });
                              },
                              activeTrackColor: kPrimaryColor,
                              activeColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(60),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(18),
                ),
                child: Container(
                  height: getProportionateScreenHeight(60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        minWidth: getProportionateScreenWidth(161),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Text(
                          "Disconnect",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      FlatButton(
                        minWidth: getProportionateScreenWidth(161),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          "Close",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(38),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopConnectionInfoComponent extends StatelessWidget {
  const TopConnectionInfoComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(38),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: getProportionateScreenHeight(690),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenWidth(50),
                    child: Image.asset("assets/images/Stanbic.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Stanbic Bank",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(2),
                        ),
                        Text(
                          "Banking Service",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(22),
                  ),
                  children: <Widget>[
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Customer Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            'Ernest Boamah Gaisie',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact Number',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            '0552523469',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Accounts',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '145765***889765',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            'Savings Account',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '145765***889765',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            'USD Account',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Notifications',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Withdrawal Limit',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            'GHC 20,000',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Credit Card Limit',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                          Text(
                            'GHC 20,000',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: getProportionateScreenWidth(13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
