import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/address/address_mobile.dart';
import 'package:tedera/screen/address/address_web.dart';
import 'package:tedera/screen/auth/register.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/navigation.dart';
import 'package:tedera/util/button.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return AddressMobile();
    }
    return AddressWeb();
  }

}
