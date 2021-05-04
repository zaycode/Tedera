import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tedera/screen/address/address_edit.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

import 'address_widget.dart';

class AddressMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarMobile(
        title: "Address",
      ),
      body: addressWidget(context)
    );
  }
}






