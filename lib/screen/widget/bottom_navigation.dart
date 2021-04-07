import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/home/home_screen.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/location/location_screen.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Util().isPhone()) {
      return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).padding.bottom),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 3,
                  ),
                ],
              ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/home.svg"),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()));
                      }),
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/location.svg"),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LocationScreen()));
                      }),
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/store.svg"),
                      onPressed: () {}),
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/chat.svg"),
                      onPressed: () {}),
                  IconButton(
                      icon: SvgPicture.asset(
                        "assets/svg/hamburger.svg",
                        color: CustomColor.primary,
                      ),
                      onPressed: () {
                        showMaterialModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                            builder: (context) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 42),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight:
                                              Radius.circular(20))),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: MenuWidget(),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: CustomBottomNavigation(),
                                    )
                                  ],
                                )
                              ],
                            ));
                      }),
                ],
              )
          )
      );
    }
    return Container();
  }
}
