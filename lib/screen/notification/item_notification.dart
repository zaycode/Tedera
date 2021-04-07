import 'package:flutter/material.dart';
import 'package:tedera/util/style_constant.dart';

class ItemNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
      decoration: BoxDecoration(
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
            style: TextStyle(
              color: Color(0xff222b45),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "12.02.2002 - 15:22",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 9,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
