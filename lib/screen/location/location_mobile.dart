
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/util/style_constant.dart';

class LocationMobile extends StatefulWidget {
  final PersistentTabController tabController;

  LocationMobile({this.tabController});

  @override
  _LocationMobileState createState() =>
      _LocationMobileState(tabController: tabController);
}

class _LocationMobileState extends State<LocationMobile> {
  final PersistentTabController tabController;

  _LocationMobileState({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/map.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                      bottom: 20,
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
                            width: 435,
                            child: ItemStore(
                              item: RestaurantItem(favorite: true, cost: 25),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  height: 56 + MediaQuery.of(context).padding.top,
                  child: Row(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset("assets/svg/back.svg"),
                          onPressed: () {
                            setState(() {
                              tabController.jumpToTab(0);
                              tabController.index=0;
                            });
                          })
                    ],
                  ))),
        ],
      ),
    );
  }
}
