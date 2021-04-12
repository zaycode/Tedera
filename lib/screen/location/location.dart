import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tedera/screen/location/location_mobile.dart';
import 'package:tedera/screen/location/location_web.dart';

class Location extends StatelessWidget {
  final PersistentTabController tabController;
  Location({this.tabController});
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return LocationMobile(tabController:tabController);
    }
    return LocationWeb();
  }
}
