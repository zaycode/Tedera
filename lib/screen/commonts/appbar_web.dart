import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tedera/screen/address/address_widget.dart';
import 'package:tedera/screen/chat/chat.dart';
import 'package:tedera/screen/home/home.dart';
import 'package:tedera/screen/home/home_web.dart';
import 'package:tedera/screen/location/location.dart';
import 'package:tedera/screen/notification/item_notification.dart';
import 'package:tedera/screen/order/order.dart';
import 'package:tedera/screen/widget/base_bottom_sheet.dart';
import 'package:tedera/screen/widget/menu.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/popup_menu.dart';
import 'package:tedera/util/style_constant.dart';

class AppbarWeb extends StatefulWidget implements PreferredSizeWidget {
  final int page;
  AppbarWeb({this.page});
  @override
  _AppbarWebState createState() => _AppbarWebState();

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class _AppbarWebState extends State<AppbarWeb> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            width: 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        "assets/svg/logo.svg",
                        height: 18,
                      ),
                      margin: EdgeInsets.only(right: 16),
                    ),
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
                                marginTop: 0,
                                isCartShow: true,
                                child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            child: Text(
                                              "Select your default Address",
                                              style: TextStyle(
                                                color: Color(0xff222b45),
                                                fontSize: 11,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/home.svg",color: widget.page==0? CustomColor.primary:CustomColor.silver,),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Home()));
                        }),
                    SizedBox(width:14 ),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/location.svg",color: widget.page==1? CustomColor.primary:CustomColor.silver),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Location()));
                        }),
                    SizedBox(width:14 ),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/store.svg",color: widget.page==2? CustomColor.primary:CustomColor.silver),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Order()));
                        }),
                    SizedBox(width:14 ),
                    IconButton(
                        icon: SvgPicture.asset("assets/svg/chat.svg"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Chat()));
                        }),
                    SizedBox(width:14 ),
                    CustomPopupMenu(
                      arrowColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Stack(
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
                      ),
                      menuBuilder: () => Container(
                        child: IntrinsicWidth(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      boxShadow
                                    ]
                                ),
                                width: 255,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(12),
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return ItemNotification(index);
                                    }),
                              ),
                            )),
                      ),
                      verticalMargin: -5,
                      pressType: PressType.singleClick,
                    ),
                    SizedBox(width:14 ),
                    CustomPopupMenu(
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset("assets/svg/hamburger.svg")),
                      menuBuilder: () => Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [boxShadow]),
                          width: 255,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            child: MenuWidget(),
                          )
                      ),
                      pressType: PressType.singleClick,
                      verticalMargin: -1,
                      arrowColor: null,
                    ),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
