import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/address/address_widget.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/home/home_widget.dart';
import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/base_bottom_sheet.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class HomeMobile extends StatefulWidget {
  final PersistentTabController tabController;

  HomeMobile({this.tabController});

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  List<RestaurantItem> restaurants = [
    RestaurantItem(favorite: true, cost: 25),
    RestaurantItem(favorite: false, cost: 0),
    RestaurantItem(favorite: false, cost: 20),
    RestaurantItem(favorite: false, cost: 80),
    RestaurantItem(favorite: true, cost: 0),
    RestaurantItem(favorite: false, cost: 30),
    RestaurantItem(favorite: false, cost: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, kToolbarHeight),
            child: Container(
              padding: EdgeInsets.only(
                  left: 16, top: MediaQuery.of(context).padding.top),
              height: kToolbarHeight + MediaQuery.of(context).padding.top,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/svg/logo.svg",
                    height: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        child: SvgPicture.asset(
                          "assets/svg/location.svg",
                          height: 12,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showMaterialModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => BaseBottomSheet(
                                  isCartShow: true,
                                  marginTop: 0,
                                  child: Container(
                                      child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            "Select your default Address",
                                            style: textDefault,
                                          )),
                                      addressWidget(context),
                                SizedBox(height: 24)
                                    ],
                                  ))));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 4),
                          child: Text(
                            "Office - New York",
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/svg/arrow_down.svg",
                        width: 9,
                      ),
                    ],
                  ),
                  IconButton(
                      icon: Stack(
                        children: [
                          SvgPicture.asset("assets/svg/notification.svg"),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: CustomColor.primary,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NotificationScreen()));
                      }),
                ],
              ),
            )),
        body: ListView(
          padding: EdgeInsets.only(bottom: 92),
          children: [
            Container(
              child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realId) {
                    return itemSlider(context);
                  },
                  options: CarouselOptions(
                    aspectRatio: 9 / 4,
                    viewportFraction: 0.9,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    initialPage: 2,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryWidget(),
                  SizedBox(height: 10),
                  SearchWidget(),
                  SizedBox(height: 10),
                  filterWidget(),
                  SizedBox(height: 10),
                  ListView.builder(
                      itemCount: restaurants.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [boxShadow]),
                          child: ItemStore(item: restaurants[index]),
                        );
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
