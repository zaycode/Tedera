import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tedera/screen/home/home_web.dart';
import 'package:tedera/screen/location/location_web.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';
import 'package:tedera/util/popup_menu.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/location/location_screen.dart';
import 'package:tedera/screen/notification/item_notification.dart';
import 'package:tedera/screen/notification/notification_screen.dart';

class AppbarWeb extends StatefulWidget implements PreferredSizeWidget {
  final String page;
  AppbarWeb({this.page});
  @override
  _AppbarWebState createState() => _AppbarWebState();

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class _AppbarWebState extends State<AppbarWeb> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            width: 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/logo.svg",
                  height: 18,
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/home.svg",color: widget.page==null || widget.page=="home"? CustomColor.primary:CustomColor.silver,),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HomeWeb()));
                            }),
                        SizedBox(width:14 ),
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/location.svg",color: widget.page=="map"? CustomColor.primary:CustomColor.silver),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LocationWeb()));
                            }),
                        SizedBox(width:14 ),
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/store.svg"),
                            onPressed: () {}),
                        SizedBox(width:14 ),
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/chat.svg"),
                            onPressed: () {}),
                        SizedBox(width:14 ),
                        CustomPopupMenu(
                          arrowColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Stack(
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
                          ),
                          menuBuilder: () => Container(
                            child: IntrinsicWidth(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          boxShadow
                                        ]
                                    ),
                                    width: 255,
                                    child: ListView.builder(
                                        padding: EdgeInsets.all(12),
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return ItemNotification();
                                        }),
                                  ),
                                )),
                          ),
                          verticalMargin: -5,
                          pressType: PressType.singleClick,
                        ),
                        SizedBox(width:14 ),
                        CustomPopupMenu(
                          child: Container(
                              padding: EdgeInsets.all(8),
                              child: SvgPicture.asset("assets/svg/hamburger.svg")),
                          menuBuilder: () => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [boxShadow]),
                              width: 255,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                child: MenuWidget(),
                              )
                          ),
                          pressType: PressType.singleClick,
                          verticalMargin: -1,
                          arrowColor: null,
                        ),
                      ],
                    ))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
