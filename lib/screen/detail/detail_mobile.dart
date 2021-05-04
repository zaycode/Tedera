import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/detail/detail_widget.dart';
import 'package:tedera/screen/food_model.dart';
import 'package:tedera/screen/home/home_widget.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_food.dart';

import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class DetailMobile extends StatefulWidget {
  @override
  _DetailMobileState createState() => _DetailMobileState();
}

class _DetailMobileState extends State<DetailMobile> {
  var activeCategoryWidget = "All";
  List<FoodModel> items = [
    FoodModel(category: "Coffe",items: [Items(),Items(),Items(),Items()]),
    FoodModel(category: "Drink",items: [Items(),Items()]),
    FoodModel(category: "Fast Food",items: [Items(),Items(),Items()]),
    FoodModel(category: "Cake",items: [Items(),Items(),Items()]),
    FoodModel(category: "Vegge",items: [Items(),Items()]),
    FoodModel(category: "Lombang",items: [Items(),Items(),Items(),Items()]),
    FoodModel(category: "Dancuk",items: [Items(),Items(),Items(),Items()]),
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
        appBar: AppBarMobile(
          title: "SOGO Pizza Hut",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                bannerDetail(),
                SizedBox(height: 10),
                titleDetailWidget(context),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [workingTimeWidget(), deliveryWidget()],
                ),
                SizedBox(height: 16),
                contactPhone(),
                SizedBox(height: 16),
                Divider(height: 1),
                SizedBox(height: 16),
                category(),
                SizedBox(height: 16),
                buildListFood()
              ],
            ),
            summaryCartSticky()
          ],
        ));
  }

  Widget category() {
    return Container(
      height: 24,
      child: ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                height: 24,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: activeCategoryWidget == categories[index]
                        ? CustomColor.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(categories[index],
                      style: TextStyle(
                          fontSize: kIsWeb ? 12 : 11,
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                          color: activeCategoryWidget == categories[index]
                              ? Colors.white
                              : CustomColor.gray)),
                ),
              ),
              onTap: () => {
                setState(() {
                  activeCategoryWidget = categories[index];
                })
              },
            );
          }),
    );
  }

  Widget buildListFood() {
    List<FoodModel> item = items;
    if (activeCategoryWidget != "All") {
      item = items.where((element) => element.category == activeCategoryWidget).toList();
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
                  border: Border(bottom: BorderSide(color: CustomColor.primary,width: 1))
                ),
                child: Text(
                  "Pizza",
                  style: textHeader3.copyWith(
                    color: CustomColor.primary
                  )
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, subIndex) {

                    return Divider(
                    height: 0.5,
                    color: Color(0xfff1f1f1),
                  );

                },
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: item[index].items.length,
                itemBuilder: (BuildContext context, int subIndex)
                {

                  return ItemFood(index: subIndex,);
                },
              )
            ],
          );
        });
  }
}
