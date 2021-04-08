import 'package:flutter/material.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';

import 'package:tedera/util/style_constant.dart';

class ItemFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 97,
        child: Row(
          children: [
            Container(
              width: 85,
              height: 85,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pizza Margharita",
                    style: textHeader3
                  ),
                  SizedBox(height: 4),
                  Text(
                      "Tomatosauce and Guada, Cheese ketchup and maccaroni. with Tomatosauce and Guada, Cheese ketchup.",
                      style: textDefault)
                ],
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Text(
                  "12,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: CustomColor.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Button(
                  text: "Add",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onPressed: null,
                  fontSize: 11,

                ),
              ],
            )
          ],
        ));
  }
}
