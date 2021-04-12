import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/cart/cart_widget.dart';
import 'package:tedera/screen/checkout/checkout_mobile.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/order/order_widget.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class OrderWeb extends StatefulWidget {
  OrderWeb();

  @override
  _OrderWebState createState() => _OrderWebState();
}

class _OrderWebState extends State<OrderWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(
          page: 2,
        ),
        body: BaseWebLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text("My Orders",
                      textAlign: TextAlign.start, style: textHeader1)),
              ListView.builder(
                shrinkWrap: true,
                itemCount: statusList.length,
                itemBuilder: (BuildContext context, int index) =>
                    itemOrder(context, statusList[index]),
              ),
            ],
          ),
        ));
  }
}
