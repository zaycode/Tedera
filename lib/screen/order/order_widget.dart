import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tedera/screen/order/order_detail.dart';
import 'package:tedera/screen/order/order_detail_mobile.dart';
import 'package:tedera/screen/widget/base_bottom_sheet.dart';
import 'package:tedera/screen/widget/dash.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:timelines/timelines.dart';
import 'delivery_model.dart';

List<String> statusList = [
  "Placed",
  "Canceled",
  "Delivered",
  "Delivered",
  "Delivered",
  "Delivered",
  "Delivered",
];

List<DeliveryModel> deliveryProcess = [
  DeliveryModel(title: "Placed", time: "9:15 AM", status: true),
  DeliveryModel(title: "Accepted", time: "9:15 AM", status: true),
  DeliveryModel(title: "Prepared", time: "9:20 AM", status: true),
  DeliveryModel(title: "On the Way", time: "", status: false),
  DeliveryModel(title: "Delivered", time: "About 5:35", status: false),
];

Widget itemOrder(context, String status) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => OrderDetail()));
    },
    child: Container(
      height: 74,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [boxShadow],
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(
        left: 10,
        right: 12,
        top: 11,
        bottom: 11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage("assets/images/thumbnail.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(width: 10),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kichi Coffee & Drink",
                style: TextStyle(
                  color: Color(0xff222b45),
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "12.02.2022",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "12,95 €",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xffec5050),
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 2),
              Text(
                status,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: status == "Placed"
                      ? CustomColor.yellowGold
                      : status == "Delivered"
                          ? CustomColor.green
                          : CustomColor.silver,
                  fontSize: 11,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderDetailInfoWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Text("Order ID: 2BS9FD2", style: textHeader3),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Text(
          "12.02.2022 • 11:35",
          style: textSmall,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              "Kichi Coffee & Drink",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "6,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "x 1",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              "Kichi Coffee & Drink",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "6,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "x 1",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "FREE",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coupon:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "2,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff69b53b),
                fontSize: 10,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "-2,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffec5050),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      Divider(height: 0.5),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.close,
              size: 10,
              color: CustomColor.primary,
            ),
            SizedBox(width: 4),
            Text(
              "Cancel Order",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xfffa0000),
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 149,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color(0xfff1f1f1),
                  width: 1,
                ),
              ),
              child: Center(
                  child: Text("Contact Restaurant",
                      textAlign: TextAlign.center, style: textHeader4)),
            ),
            Container(
              width: 149,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color(0xfff1f1f1),
                  width: 1,
                ),
              ),
              child: Center(
                  child: Text(
                "Contact Driver",
                textAlign: TextAlign.center,
                style: textHeader4,
              )),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget orderDetailTrackingWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "TRACK ORDER",
        style: textHeader3,
      ),
      FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          indicatorTheme: IndicatorThemeData(
            size: 16.0,
          ),
          connectorTheme: ConnectorThemeData(
            thickness: 2,
          ),
        ),
        builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: deliveryProcess.length,
            contentsBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      deliveryProcess[index].title,
                      style: textDefault,
                    ),
                    Text(
                      deliveryProcess[index].time,
                      style: textDefault,
                    ),
                  ],
                ),
              );
            },
            indicatorBuilder: (context, index) {
              if (index == (deliveryProcess.length - 1)) {
                return Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColor.silver,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.flag,
                    color: Colors.white,
                    size: 12,
                  )),
                );
              }
              if (deliveryProcess[index].status) {
                return Container(
                  width: 20,
                  height: 20,
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/svg/option_checked_solid.svg",
                    color: CustomColor.primary,
                  )),
                );
              } else {
                return Container(
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          color: CustomColor.silver,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                );
              }
            },
            connectorBuilder: (context, index, type) {
              if (deliveryProcess[index].status) {
                return SizedBox(
                  height: 25,
                  child: DecoratedLineConnector(
                    decoration: BoxDecoration(color: CustomColor.primary),
                  ),
                );
              } else {
                return Dash(
                    direction: Axis.vertical,
                    length: 25,
                    dashThickness: 2,
                    dashColor: CustomColor.silver);
              }
            }),
      ),
    ],
  );
}

Widget ratingWidgetDialog(BuildContext context) {
  return Column(
    children: [
      Container(
        child: Column(
          children: [
            Text(
              "Rate the Restaurant",
              textAlign: TextAlign.center,
              style: textHeader2,
            ),
            SizedBox(height: 7),
            Text("How would you rate this restaurant?",
                textAlign: TextAlign.center,
                style: textDefaultGrey),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  width: 32,
                  color: CustomColor.silver,
                ),
              ],
            ),
            Container(
              height: 79.46,
              padding: EdgeInsets.symmetric(horizontal: 11),
              margin: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff7f9fc),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                //Normal textInputField will be displayed
                maxLines: 5,
                style: textDefaultGrey,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Do you want to say something about Devin?",
                    contentPadding: EdgeInsets.only(bottom: 17)),
              ),
            ),
          ],
        ),
      ),
      Divider(
        height: 1,
        color: Color(0xffdfdfdf),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text(
              "Rate the Restaurant",
              textAlign: TextAlign.center,
              style: textHeader2,
            ),
            SizedBox(height: 7),
            Text("How would you rate this restaurant?",
                textAlign: TextAlign.center,
                style: textDefaultGrey),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  color: CustomColor.amber,
                  width: 32,
                ),
                SizedBox(width: 15),
                SvgPicture.asset(
                  "assets/svg/star.svg",
                  width: 32,
                  color: CustomColor.silver,
                ),
              ],
            ),
            Container(
              height: 79.46,
              padding: EdgeInsets.symmetric(horizontal: 11),
              margin: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff7f9fc),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                //Normal textInputField will be displayed
                maxLines: 5,
                style: textDefaultGrey,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Do you want to say something about Devin?",
                    contentPadding: EdgeInsets.only(bottom: 17)),
              ),
            ),
            Center(
              child: Button(
                text: "Submit",
                onPressed: () {
                  Navigator.pop(context);
                  showMaterialModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) =>
                          BaseBottomSheet(ratingWidgetDialogSuccess(context)));
                },
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget ratingWidgetDialogSuccess(BuildContext context) {
  return Container(
      height: 400,
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Congratulations",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff222b45),
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Your rating has been submited sucessfully!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff5b5b5b),
                        fontSize: 11,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w200,
                      )),
                  SizedBox(height: 16),
                ],
              ),
            ),
          )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 21),
              child: Center(
                child: Button(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ))
        ],
      ));
}

Widget reviewWidget(BuildContext context) {
  return Column(children: [
    InkWell(
      onTap: () {
        showMaterialModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => BaseBottomSheet(ratingWidgetDialog(context)));
      },
      child: Container(
        width: 149,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0xfff1f1f1),
            width: 1,
          ),
        ),
        child: Center(
            child: Text("Rate this order",
                textAlign: TextAlign.center, style: textHeader4)),
      ),
    ),
    SizedBox(height: 32),
    Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [boxShadow],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Restaurant Rating",
                style: textHeader3,
              ),
              Text(
                "12.03.2021",
                style: textSmallGray,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rating :",
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                      color: CustomColor.silver,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "I love their Salad items. Also love their Sushi items! Extraordinary. An elite standard by which you judge rest of the restaurants. Staff always ready to help, extreme cleanliness, posh atmosphere and delicious food with perfect delivery.",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [boxShadow],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Restaurant Rating",
                style: TextStyle(
                  color: Color(0xff222b45),
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "12.03.2021",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rating :",
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                    ),
                    SizedBox(width: 2),
                    SvgPicture.asset(
                      "assets/svg/star.svg",
                      width: 13,
                      color: CustomColor.silver,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "I love their Salad items. Also love their Sushi items! Extraordinary. An elite standard by which you judge rest of the restaurants. Staff always ready to help, extreme cleanliness, posh atmosphere and delicious food with perfect delivery.",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    ),
  ]);
}
