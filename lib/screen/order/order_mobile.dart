import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/cart/cart_widget.dart';
import 'package:tedera/screen/checkout/checkout_mobile.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/order/order_widget.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';

class OrderMobile extends StatefulWidget {
  final PersistentTabController tabController;

  OrderMobile({@required this.tabController});

  @override
  _OrderMobileState createState() => _OrderMobileState();
}

class _OrderMobileState extends State<OrderMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
            leading: IconButton(
          icon: SvgPicture.asset("assets/svg/back.svg"),
          onPressed: () =>widget.tabController.jumpToTab(1),
        ),
            title: Text("My Orders"),
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: Colors.transparent),
            actions: [
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
            ]),
        body: ListView.builder(
          padding: EdgeInsets.only(bottom: 50,left: 16,right: 16,top: 8),
          shrinkWrap: true,
          itemCount: statusList.length,
          itemBuilder: (BuildContext context, int index) =>
              itemOrder(context,statusList[index]),
        ));
  }
}
