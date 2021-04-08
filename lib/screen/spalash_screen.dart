import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tedera/screen/navigation.dart';
import 'package:tedera/util/color.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      backgroundColor: CustomColor.primary,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/logo-white.svg"),
            SizedBox(height: 8),
            Text(
              "Local one food system",
              style: TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
  init(context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(
            builder: (BuildContext context) => Navigation()
            ));

  }
}
