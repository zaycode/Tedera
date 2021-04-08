import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/detail/content_dialog_detail.dart';
import 'package:tedera/screen/widget/category_widget.dart';

import 'package:tedera/screen/widget/item_food.dart';
import 'package:tedera/util/color.dart';
import 'package:flutter/foundation.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: !kIsWeb?16:0),
                width: !kIsWeb?double.infinity:900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: !kIsWeb?176:460,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: AssetImage("assets/images/thumbnail.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "SOGO Pizza Hut",
                                style: TextStyle(
                                  color: Color(0xff222b45),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Row(
                            children: [
                              Icon(Icons.star, color: CustomColor.amber,size: 14,),
                              SizedBox(width: 4),
                              Text(
                                "4.7",
                                style: TextStyle(
                                    color: CustomColor.darkBlue,
                                    fontSize: 12,
                                    height: 1.2,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 4),
                              Text("(1256 Reviews)",
                                  style: TextStyle(fontSize: 8, color: CustomColor.gray))
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Working Time",
                                style: TextStyle(
                                  color: Color(0xff222b45),
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Monday - Thursday:",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Saturday:",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Sunday:",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "09:00-20:00",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "09:00-20:00",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "09:00-20:00",
                                        style: TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 9,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                color: Color(0xff222b45),
                                fontSize: 13,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/svg/wallet.svg",
                                            width: 10, color: CustomColor.darkBlue),
                                        SizedBox(width: 3),
                                        Text("Minimal Order",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/svg/car.svg",
                                            width: 10, color: CustomColor.darkBlue),
                                        SizedBox(width: 3),
                                        Text("Delivery Cost",
                                            style: Theme.of(context).textTheme.overline),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg/clock.svg",
                                          width: 10,
                                          color: CustomColor.darkBlue,
                                        ),
                                        SizedBox(width: 3),
                                        Text("Delivery Time",
                                            style: Theme.of(context).textTheme.overline),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5,00€",
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontSize: 9,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "FREE",
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontSize: 9,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "30 min",
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontSize: 9,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                        !!kIsWeb?Expanded(flex:2,child: contactPhone()):Container()
                      ],
                    ),
                    SizedBox(height: 16),
                    !kIsWeb?contactPhone():Container(),
                    SizedBox(height: 16),
                    Divider(height: 1,),
                    SizedBox(height: 16),
                    CategoryWidget(),
                    ContentDialogDetail()
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }

  Widget contactPhone(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contact",
          style: TextStyle(
            color: Color(0xff222b45),
            fontSize: 13,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "Baustreet 25, 129983, Paris, France New York, USA",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 10,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 50),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/chat.svg"),
                  SvgPicture.asset("assets/svg/phone.svg"),
                  SvgPicture.asset("assets/svg/map.svg"),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
  Widget buildListFood() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: !kIsWeb ? 1 : 2,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) => ItemFood(),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 8,
        crossAxisSpacing:20,

      ),
    );
  }
}
