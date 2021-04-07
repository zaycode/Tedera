import 'package:flutter/material.dart';
GlobalKey globalKey =  GlobalKey<ScaffoldState>();
class Util{
  bool isPhone() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? true : false;
  }
}