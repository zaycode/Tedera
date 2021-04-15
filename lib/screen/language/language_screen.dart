import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tedera/screen/base_web_layout.dart';
import 'package:tedera/screen/commonts/appbar_mobile.dart';
import 'package:tedera/screen/commonts/appbar_web.dart';
import 'package:tedera/screen/language/item_language.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class LanguageScreen extends StatelessWidget {
  List<String> list = [
    "English",
    "Indonesia",
    "China",
    "German",
    "Italia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kIsWeb?AppbarWeb():AppBarMobile(
          title: "Language",
        ),
        body: kIsWeb?BaseWebLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Language",style: textHeader1),
              SizedBox(height: 16),
              content()
            ],
          ),
        ):Container(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: content(),
        )
    );
  }

  Widget content(){
    return ListView.builder(
      shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context,index)=>ItemLanguage(list[index],index)
    );
  }
}
