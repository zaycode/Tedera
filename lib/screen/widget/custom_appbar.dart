import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tedera/screen/home/home_screen.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/location/location_screen.dart';
import 'package:tedera/screen/notification/item_notification.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';
import 'package:tedera/util/popup_menu.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hideActionBarMobile;
  final bool showBackButton;
  final String title;

  CustomAppBar(
      {this.title,
      this.hideActionBarMobile = false,
      this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    if (Util().isPhone()) {
      return appbarMobile(context);
    }
    return appbarWeb(context);
  }

  Widget appbarMobile(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.transparent),
      title: title == null
          ? SvgPicture.asset(
              "assets/svg/logo.svg",
              height: 18,
            )
          : Text(title),
      leading: showBackButton
          ? IconButton(
              icon: SvgPicture.asset("assets/svg/back.svg"),
              onPressed: () {
                Navigator.pop(context);
              })
          : null,
      actions: hideActionBarMobile
          ? []
          : [
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
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                NotificationScreen()));
                  }),
            ],
    );
  }

  Widget appbarWeb(BuildContext context) {
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
                        icon: SvgPicture.asset("assets/svg/home.svg"),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()));
                        }),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/location.svg"),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LocationScreen()));
                        }),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/store.svg"),
                        onPressed: () {}),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/chat.svg"),
                        onPressed: () {}),
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
                                padding: EdgeInsets.all(16),
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
                          child: MenuWidget()),
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

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
