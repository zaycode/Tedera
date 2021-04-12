import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/cart/cart_widget.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/detail/detail_widget.dart';
import 'package:tedera/screen/home/home_widget.dart';
import 'package:tedera/screen/notification/notification_screen.dart';
import 'package:tedera/screen/widget/category_widget.dart';
import 'package:tedera/screen/widget/item_food.dart';

import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class CartWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(page: 0),
        body:  BaseWebLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              listCart(),
              Container(
                  width: 350,
                  child: cartCount(context)
              )
            ],
          ),
        )
    );
  }

}
