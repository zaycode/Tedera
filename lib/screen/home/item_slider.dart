import 'package:flutter/material.dart';
import 'package:tedera/util/util.dart';

class ItemSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Util().isPhone() ? 309 : 900,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
                image: AssetImage("assets/images/banner.jpg"),
                fit: BoxFit.cover)));
  }
}
