import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  var activeCategoryWidget = "All";
  List<String> categories = [
    "All",
    "Coffe",
    "Drink",
    "Fast Food",
    "Cake",
    "Vegge"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 28,
        child: ListView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  height: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  decoration: BoxDecoration(
                      color: activeCategoryWidget == categories[index]
                          ? CustomColor.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(categories[index],
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                          color: activeCategoryWidget == categories[index]
                              ? Colors.white
                              : CustomColor.gray)),
                ),
                onTap: () =>
                {
                  setState(() {
                    activeCategoryWidget = categories[index];
                  })
                },
              );
            }));
  }
}
