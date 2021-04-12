import 'package:flutter/material.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/order/order_widget.dart';

class OrderDetailWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWeb(page: 2),
      body: BaseWebLayout(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 350,
                child: orderDetailInfoWidget()
            ),
            Container(
              width: 350,
              child: Column(
                children: [
                  orderDetailTrackingWidget(context),
                  reviewWidget(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
