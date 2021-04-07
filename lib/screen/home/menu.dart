import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        listMenuWidget()
      ],
    );



  }

  Widget header() {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      child: Container(
        height: 70,

        color: CustomColor.primary,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "CC",
                  style: textHeader2,
                ),
              ),
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Charlie Chapin",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "client@email.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )),
            IconButton(
                icon: SvgPicture.asset("assets/svg/edit.svg", width: 14),
                onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget listMenuWidget() {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/favorite.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("Favorites", style: titleStyle)
                ],
              ),
            ),
            onTap: () {},
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/address.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Addresses", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/language.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Languages", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/phone.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Help & Support", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/privacy.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Privacy Policy", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/term.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Terms and Condition", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/about.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("About", style: titleStyle)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/logout.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Log out", style: titleStyle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
