import 'dart:io' show Platform;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/widget/bottom_navigation.dart';
import 'package:tedera/screen/widget/custom_appbar.dart';
import 'package:tedera/screen/widget/summary_cart_flying.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/screen/home/item_slider.dart';
import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/home/type_delivery_widget.dart';

import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().isPhone()?null:CustomAppBar(),
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
                          width: Util().isPhone() ? double.infinity : 900,
                          margin: EdgeInsets.only(bottom: Util().isPhone() ? 0 : 55),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/map.jpg"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Positioned(
                          bottom: Util().isPhone() ? 70 : 80,
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
                                width: Util().isPhone() ? double.infinity : 435,
                                child: ItemStore(),
                                margin: EdgeInsets.symmetric(
                                    horizontal: Util().isPhone() ? 15 : 0),
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

          SummaryCartFlying(),
          CustomBottomNavigation(),
          backButtonTransParent(),

        ],
      ),
    );
  }

  Widget backButtonTransParent(){
    return Util().isPhone()?Positioned(
      left: 0,
      right: 0,
      top: 0,
      child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          height: 56+ MediaQuery.of(context).padding.top,
          child:Row(
            children: [
              IconButton(
                  icon: SvgPicture.asset("assets/svg/back.svg"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
              )
            ],
          )
      ),
    ):Container();
  }

}
