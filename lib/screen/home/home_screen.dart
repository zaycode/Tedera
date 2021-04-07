import 'dart:io' show Platform;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/widget/bottom_navigation.dart';
import 'package:tedera/screen/widget/custom_appbar.dart';

import 'package:tedera/screen/widget/summary_cart_flying.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/screen/home/item_slider.dart';
import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/home/type_delivery_widget.dart';

import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/util/util.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(bottom: 92),
            children: [
              Container(
                height: Util().isPhone() ? 134 : 390,
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: 3,

                    itemBuilder: (context, index, realId) {
                      return ItemSlider();
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      initialPage: 2,
                      viewportFraction: !Util().isPhone() ? 0.64 : Platform
                          .isAndroid ? 0.78 : 0.75,
                      enlargeCenterPage: false,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Column(
                  children: [
                    Container(
                      width: Util().isPhone() ? double.infinity : 900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CategoryWidget(),
                          buildFilter(),
                          buildListFood()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SummaryCartFlying(),
          CustomBottomNavigation()
        ],
      ),
    ) ;

  }

  Widget buildFilter() {
    if (Util().isPhone()) {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SearchWidget(), TypeDeliveryWidget()],
        ),
      );
    }

    return Container(
      height: 43,
      child: Row(
        children: [Expanded(child: TypeDeliveryWidget()), SearchWidget()],
      ),
    );
  }


  Widget buildListFood() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: Util().isPhone() ? 1 : 2,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) => ItemStore(),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 8,
        crossAxisSpacing: 20,

      ),
    );
  }
}
