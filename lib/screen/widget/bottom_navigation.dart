import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadera/screen/home/menu.dart';
import 'package:tadera/util/color.dart';
import 'package:tadera/util/util.dart';

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
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/home.svg"),
                      onPressed: () {}),
                  IconButton(
                      icon: SvgPicture.asset("assets/svg/location.svg"),
                      onPressed: () {}),
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
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => ListView(
                            shrinkWrap: true,
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                child: Menu(),
                              )
                            ],
                          ),
                        );
                      }),
                ],
              )));
    }
    return Container();
  }
}
