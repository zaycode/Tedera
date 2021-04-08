import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset("assets/svg/back.svg"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text("Notifications"),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) =>
                  //             NotificationScreen())
                  // );
                }),
          ]),
      body: isEmpty
          ? empty()
          : ListView.builder(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemNotification();
              }),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20.0),
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
