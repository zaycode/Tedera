import 'package:flutter/material.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/screen/widget/summary_cart_flying.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';
class LocationWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWeb(page: "map",),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width:  900,
                          margin: EdgeInsets.only(bottom: 55),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/map.jpg"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Positioned(
                          bottom:  80,
                          right: 0,
                          left: 0,
                          child: Column(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      boxShadow,
                                    ]),
                                width: 431,
                                child: ItemStore(item:  RestaurantItem(favorite: true,cost: 25),),

                              )
                            ],
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
          SummaryCartFlying()
        ],
      ),
    );
  }
}
