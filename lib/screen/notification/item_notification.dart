import 'package:flutter/material.dart';
import 'package:tedera/util/style_constant.dart';

class ItemNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            boxShadow
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your order 234889 has been accepted",
            style: textDefault),
          SizedBox(height: 4,),
          Text(
            "12.02.2002 - 15:22",
            style: textSmall
          ),
        ],
      ),
    );
  }
}
