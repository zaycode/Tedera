import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/util/color.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:SvgPicture.asset("assets/svg/logo.svg",height: 18,),
        titleSpacing: 16,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.transparent),
        actions:  [
          IconButton(
              icon: Stack(
                children: [
                  SvgPicture.asset("assets/svg/notification.svg"),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: CustomColor.primary,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (BuildContext context) => NotificationScreen()));
              }),
        ]
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(48.0);
}
