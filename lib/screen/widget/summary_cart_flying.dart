import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';

class SummaryCartFlying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 375,
              height: 41,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                boxShadow: [
                  boxShadow
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "3 Items",
                          style: TextStyle(
                            color: Color(0xffec5050),
                            fontSize: 11,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "12,95 €",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xffec5050),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        "View Cart",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xffec5050),
                          fontSize: 11,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.add_shopping_cart,size: 14,color: CustomColor.primary,)
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
