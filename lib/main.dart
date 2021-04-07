import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tedera/screen/home/home_screen.dart';
import 'package:tedera/screen/spalash_screen.dart';
import 'package:tedera/util/theme_provider.dart';
import 'package:tedera/util/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: Util().isPhone()?SplashScreen():HomeScreen(),
    );
  }
}
