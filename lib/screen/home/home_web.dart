import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/home/home_widget.dart';

import 'package:tedera/screen/home/search_widget.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_store.dart';
import 'package:tedera/util/style_constant.dart';

class HomeWeb extends StatefulWidget {
  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(page: 0),
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
                        return itemSlider(context);
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
                                filterWidget()
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
            summaryCartSticky()
          ],
        ));
  }
}
