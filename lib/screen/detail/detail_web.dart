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

class DetailWeb extends StatelessWidget {
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
              titleDetailWidget(),
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
        )
    );
  }


  Widget buildListFood() {

    return  StaggeredGridView.countBuilder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        return ItemFood();
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.fit(1),
      mainAxisSpacing: 8,
      crossAxisSpacing: 20,
    );

  }
}
