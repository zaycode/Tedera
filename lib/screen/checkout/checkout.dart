import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tedera/screen/cart/cart_mobile.dart';
import 'package:tedera/screen/cart/cart_web.dart';
import 'package:tedera/screen/checkout/checkout_mobile.dart';
import 'package:tedera/screen/checkout/checkout_web.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return CheckOutMobile();
    }
    return CheckOutWeb();
  }
}
