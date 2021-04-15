import 'package:flutter/material.dart';
import 'package:tedera/screen/home/home_widget.dart';

class BaseWebLayout extends StatelessWidget {
  final Widget child;
  final bool showCart;
  BaseWebLayout({this.child,this.showCart=true});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 50),
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 900,
                  child: child,
                )
              ],
            )
          ],
        ),
        showCart?summaryCartSticky():Container()
      ],
    );
  }
}
