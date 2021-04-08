import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/chat_mobile.dart';
import 'package:tedera/screen/home/home_mobile.dart';
import 'package:tedera/screen/home/menu.dart';
import 'package:tedera/screen/location/location_screen.dart';
import 'package:tedera/screen/profile/profile.dart';
import 'package:tedera/screen/store_mobile.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/popup_menu.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      hideNavigationBarWhenKeyboardShows: false,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight,
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      confineInSafeArea: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      stateManagement: true,
      decoration: NavBarDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
          )
        ],
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style5,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeMobile(tabController: _controller),
      LocationScreen(tabController: _controller),
      StoreMobile(tabController: _controller),
      ChatMobile(tabController: _controller),
      Profile()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/home.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset(
            "assets/svg/home.svg",
          ),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/location.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset(
            "assets/svg/location.svg",
          ),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/store.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset("assets/svg/store.svg"),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/chat.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset("assets/svg/chat.svg"),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/hamburger.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset("assets/svg/hamburger.svg",color: CustomColor.silver,),
          activeColorPrimary: CustomColor.primary),
    ];
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: kBottomNavigationBarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                          ? item.activeColorPrimary
                          : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          decoration:
              BoxDecoration(color: Colors.white, boxShadow: [boxShadow]),
          width: double.infinity,
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.map((item) {
              int index = items.indexOf(item);
              return Flexible(
                child: GestureDetector(
                  onTap: () {
                    this.onItemSelected(index);
                  },
                  child: _buildItem(item, selectedIndex == index),
                ),
              );
            }).toList(),
          )),
    );
  }
}
