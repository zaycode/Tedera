import 'package:flutter/material.dart';
import 'package:tedera/screen/home/home_widget.dart';

class BaseWebLayout extends StatelessWidget {
  final Widget child;
  BaseWebLayout({this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 50),
          children: [
            Column(
              children: [
                Container(
                  width: 900,
                  child: Expanded(child: child),
                )
              ],
            )
          ],
        ),
        summaryCartSticky()
      ],
    );
  }
}
