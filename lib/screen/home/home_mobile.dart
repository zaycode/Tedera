import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/home/item_slider.dart';
import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/home/type_delivery_widget.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_food.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';

class HomeMobile extends StatefulWidget {
  final PersistentTabController tabController;
  HomeMobile({this.tabController});
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  List<RestaurantItem> restaurants=[
    RestaurantItem(favorite: true,cost: 25),
    RestaurantItem(favorite: false,cost: 0),
    RestaurantItem(favorite: false,cost: 20),
    RestaurantItem(favorite: false,cost: 80),
    RestaurantItem(favorite: true,cost: 0),
    RestaurantItem(favorite: false,cost: 30),
    RestaurantItem(favorite: false,cost: 50),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(),
      body:  ListView(
        padding: EdgeInsets.only(bottom: 92),
        children: [
          Container(
            child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realId) {
                  return ItemSlider();
                },
                options: CarouselOptions(
                  aspectRatio: 9/4,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  initialPage: 2,

                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryWidget(),
                SizedBox(height: 10),
                SearchWidget(),
                SizedBox(height: 10),
                TypeDeliveryWidget(),
                SizedBox(height: 10),
                ListView.builder(
                    itemCount: restaurants.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              boxShadow
                            ]
                        ),
                        child: ItemStore(item:restaurants[index]),
                      );
                    }
                ),
              ],
            ),
          ),
        ],
      )
    ) ;
  }
}
