import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class ItemLanguage extends StatelessWidget {
  final index;
  final title;
  ItemLanguage(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          boxShadow
        ]
      ),
      padding:EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          index==0?Icon(
            Icons.check_circle_outline,
            color: CustomColor.primary,
            size: 20,
          ):Container()
        ],
      ),
    );
  }
}
