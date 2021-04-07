import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';

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
        height: 28,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: type.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: type[index] == activeType
                          ? Colors.red.withOpacity(0.5)
                          : Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 4,
                      offset: Offset(2, 4), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      type[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.gray
                      ),
                    ),
                    SizedBox(width: 4),
                    type[index] == activeType
                        ? Icon(
                            Icons.check_circle_outline,
                            color: CustomColor.primary,
                            size: 12,
                          )
                        : Container()
                  ],
                ),
              );
            }));
  }
}
