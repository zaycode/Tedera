import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tedera/util/util.dart';

class ItemSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.symmetric(horizontal: 7.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("assets/images/banner.jpg"),
                fit: BoxFit.cover))
    );
  }
}
