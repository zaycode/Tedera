import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/style_constant.dart';

class SuccessOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/ilustration_order.svg"),
        Text(
          "Your Order has been\nsubmitted succesfully!",
          textAlign: TextAlign.center,
          style: textHeader1
        ),
        Text(
          "We'll deliver your order immediately,\nmake sure your order put on the doorstep",
          textAlign: TextAlign.center,
          style: textLight
        ),
        SizedBox(height: 42),
        Button(
            text:"Go to my orders",
            onPressed: (){

            },
        )
      ],
    );
  }
}
