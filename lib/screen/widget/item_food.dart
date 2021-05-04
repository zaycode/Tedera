import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tedera/screen/cart/cart_widget.dart';
import 'package:tedera/screen/widget/base_bottom_sheet.dart';

import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class ItemFood extends StatelessWidget {
  int index;
  ItemFood({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 11),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            index!=2?Container(
              width: 85,
              height: 85,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ):Container(),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pizza Margharita", style: textHeader3),
                  SizedBox(height: 4),
                  Text(
                      "Tomatosauce and Guada, Cheese ketchup and maccaroni. with Tomatosauce and Guada, Cheese ketchup.",
                      style: textDefaultGrey)
                ],
              ),
            ),
            SizedBox(width: 30),
            Column(

              crossAxisAlignment: CrossAxisAlignment.end,
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  onPressed: () {
                    showMaterialModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => BaseBottomSheet(child:contentAddCartDialog(context)));
                  },
                  fontSize: 11,
                ),
              ],
            )
          ],
        ));
  }
}
