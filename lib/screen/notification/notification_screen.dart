import 'package:flutter/material.dart';
import 'package:tedera/screen/widget/bottom_navigation.dart';
import 'package:tedera/screen/widget/custom_appbar.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

import 'item_notification.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        showBackButton: true,

      ),
      body: Stack(
        children: [
          isEmpty
              ? empty()
              : ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ItemNotification();
                  }),
          CustomBottomNavigation()
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton(
          backgroundColor: CustomColor.primary,
          child: Text(isEmpty ? "Show" : "Empty"),
          onPressed: () => {
            setState(() {
              isEmpty = !isEmpty;
            })
          },
        ),
      ),
    );
  }

  Widget empty() {
    return Center(
      child: Text("You don’t have any notification",
          textAlign: TextAlign.center, style: textDefault),
    );
  }
}
