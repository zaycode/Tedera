import 'package:flutter/material.dart';
import 'package:tedera/util/util.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: Util().isPhone() ? double.infinity : 347,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.05)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 4,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: TextField(
                style: TextStyle(fontSize: 13),
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 13),
                    border: InputBorder.none,
                    hintText: "Search",
                    contentPadding: EdgeInsets.symmetric(vertical:Util().isPhone()?8:12)),
              )),
          Icon(
            Icons.search,
            size: 16,
          )
        ],
      ),
    );
  }
}

