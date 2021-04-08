import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:flutter/foundation.dart';

class TypeDeliveryWidget extends StatelessWidget {
  var activeType = "Delivery";
  List<String> type = [
    "Delivery",
    "PickUp",
    "Local",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        child: ListView.builder(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: type.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  type[index]==activeType?Positioned(
                    top: 2,
                    left: 2,
                    right: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 28,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: CustomColor.primary,
                          borderRadius:BorderRadius.circular(5)
                      ),

                    ),
                  ):Container(),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    height: 28,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0c000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ]
                    ),
                    child: Row(
                      children: [
                        Text(
                          type[index],
                          style: type[index] == activeType
                              ? TextStyle(
                                  color: CustomColor.primary,
                                  fontSize: kIsWeb ? 12 : 11,
                                  fontWeight: FontWeight.w500,
                                )
                              : TextStyle(
                                  color: CustomColor.darkBlue,
                                  fontSize: kIsWeb ? 12 : 11,
                                  fontWeight: FontWeight.w500,
                                ),
                        ),
                        SizedBox(width: 8),
                        type[index] == activeType
                            ? SvgPicture.asset("assets/svg/checked.svg")
                            : Container()
                      ],
                    ),
                  ),

                ],
              );
            }));
  }
}
