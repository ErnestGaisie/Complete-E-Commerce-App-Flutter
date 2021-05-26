import 'package:complete_e_commerce_app_flutter/components/default_button.dart';
import 'package:complete_e_commerce_app_flutter/constants.dart';
import 'package:complete_e_commerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../connection_request/connection_request_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(18),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(29),
            ),
            TopIdeaComponent(),
            SizedBox(
              height: getProportionateScreenHeight(49),
            ),
            Container(
              width: getProportionateScreenWidth(255),
              height: getProportionateScreenHeight(243),
              child: Image.asset("assets/images/QR.png"),
            ),
            SizedBox(
              height: getProportionateScreenHeight(113),
            ),
            DefaultButton(
              text: "Scan Code",
              press: () {
                Navigator.pushNamed(context, ConnectionRequestScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}

class TopIdeaComponent extends StatelessWidget {
  const TopIdeaComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(131),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(18),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getProportionateScreenHeight(10),
                    width: getProportionateScreenWidth(10),
                    child: Image.asset("assets/images/WhiteCancel.png"),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getProportionateScreenHeight(54),
                  width: getProportionateScreenWidth(54),
                  child: Image.asset("assets/images/IdeaPic.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(15),
                      getProportionateScreenHeight(3), 0, 0),
                  child: Text(
                    "Simply scan the QR code to \ncapture the needed information \nPlace the QR code inside the \narea.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
