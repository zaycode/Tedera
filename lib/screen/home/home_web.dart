import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/home/item_slider.dart';
import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/home/type_delivery_widget.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_food.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tedera/screen/widget/summary_cart_flying.dart';
import 'package:tedera/util/style_constant.dart';

class HomeWeb extends StatefulWidget {
  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  List<RestaurantItem> restaurants = [
    RestaurantItem(favorite: true, cost: 25),
    RestaurantItem(favorite: false, cost: 0),
    RestaurantItem(favorite: false, cost: 20),
    RestaurantItem(favorite: false, cost: 80),
    RestaurantItem(favorite: true, cost: 0),
    RestaurantItem(favorite: false, cost: 30),
    RestaurantItem(favorite: false, cost: 50),
    RestaurantItem(favorite: false, cost: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 92),
              children: [
                Container(
                  height: 370,

                  child: CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, realId) {
                        return ItemSlider();
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction:0.63,
                        autoPlayInterval: Duration(seconds: 5),
                        initialPage: 2,
                      )),
                ),
                Column(
                  children: [
                    Container(
                      width: 900,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CategoryWidget(),
                          SizedBox(height: 17),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SearchWidget(),
                                TypeDeliveryWidget()


                          ]),
                          SizedBox(height: 17),
                          StaggeredGridView.countBuilder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            itemCount: restaurants.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [boxShadow]),
                                child: ItemStore(item: restaurants[index]),
                              );
                            },
                            staggeredTileBuilder: (int index) =>
                                StaggeredTile.fit(1),
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SummaryCartFlying()
          ],
        ));
  }
}
