import 'package:flutter/material.dart';
import 'package:tedera/screen/language/item_language.dart';
import 'package:tedera/util/color.dart';

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
        appBar: AppBar(
          title: Text("Language"),
          leadingWidth: 24,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: CustomColor.primary),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context,index)=>ItemLanguage(list[index],index)
    )
    );
  }
}
