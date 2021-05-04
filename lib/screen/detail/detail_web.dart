import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/detail/detail_widget.dart';
import 'package:tedera/screen/home/home_widget.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_food.dart';

import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

import '../food_model.dart';

class DetailWeb extends StatefulWidget {
  @override
  _DetailWebState createState() => _DetailWebState();
}

class _DetailWebState extends State<DetailWeb> {
  var activeCategoryWidget = "All";
  List<FoodModel> items = [
    FoodModel(category: "Coffe", items: [Items(), Items(), Items(), Items()]),
    FoodModel(category: "Drink", items: [Items(), Items()]),
    FoodModel(category: "Fast Food", items: [Items(), Items(), Items()]),
    FoodModel(category: "Cake", items: [Items(), Items(), Items()]),
    FoodModel(category: "Vegge", items: [Items(), Items()]),
    FoodModel(category: "Lombang", items: [Items(), Items(), Items(), Items()]),
    FoodModel(category: "Dancuk", items: [Items(), Items(), Items(), Items()]),
  ];

  List<String> categories = [
    "All",
    "Coffe",
    "Drink",
    "Fast Food",
    "Cake",
    "Vegge",
    "Lombang",
    "Dancuk"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(page: 0),
        body: BaseWebLayout(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bannerDetail(),
              SizedBox(height: 10),
              titleDetailWidget(context),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  workingTimeWidget(),
                  deliveryWidget(),
                  contactPhone(),
                ],
              ),
              SizedBox(height: 16),
              Divider(height: 1),
              SizedBox(height: 16),
              CategoryWidget(),
              SizedBox(height: 16),
              buildListFood()
            ],
          ),
        ));
  }

  Widget buildListFood() {
    List<FoodModel> item = items;
    if (activeCategoryWidget != "All") {
      item = items
          .where((element) => element.category == activeCategoryWidget)
          .toList();
    }

    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: 50),
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: CustomColor.primary, width: 1))),
                child: Text("Pizza",
                    style: textHeader3.copyWith(color: CustomColor.primary)),
              ),
              StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: item[index].items.length,
                itemBuilder: (context, index) {
                  return ItemFood(index: index,);
                },
                staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                mainAxisSpacing: 8,
                crossAxisSpacing: 20,
              )
            ],
          );
        });
  }
}
