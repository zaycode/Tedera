import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/order/order_widget.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class OrderDetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(title:"Order Detail"),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 16,right: 16,bottom: 50),
          children: [
            orderDetailInfoWidget(),
            SizedBox(height: 20),
            orderDetailTrackingWidget(context),
            reviewWidget(context)
          ],
        ),
      ),
    );

  }
}
