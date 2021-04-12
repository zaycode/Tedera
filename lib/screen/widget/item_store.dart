import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/detail/detail.dart';
import 'package:tedera/screen/detail/detail_mobile.dart';
import 'package:tedera/screen/restaurants_item.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class ItemStore extends StatefulWidget {
  final RestaurantItem item;
  ItemStore({this.item});

  @override
  _ItemStoreState createState() => _ItemStoreState();
}

class _ItemStoreState extends State<ItemStore> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (BuildContext context) => Detail()));

      },
      child: Container(
        height: kIsWeb? 120 : 96,
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: kIsWeb ? 109:87,
              height: kIsWeb ? 109:87,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kichi Coffee & Drink",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textHeader3),
                          SizedBox(height: 2),
                          Text("Fast Food, Drink, Coffe, Pizza, Burger...",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textSmall)
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/star.svg",
                            width: kIsWeb?12.5:10,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.7",
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: kIsWeb?13:12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text("(1256 Reviews)",
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: kIsWeb?11:9,
                              fontWeight: FontWeight.w500,
                            ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/clock.svg",
                            width: 10,
                            color: CustomColor.darkBlue,
                          ),
                          SizedBox(width: 5),
                          Text("30 Min", style: textSmall),
                          SizedBox(width: 8),
                          SvgPicture.asset("assets/svg/location.svg",
                              width: 10, color: CustomColor.darkBlue),
                          SizedBox(width: 5),
                          Text("0.4 Km",
                              style: textSmall),
                          SizedBox(width: 8),

                          SvgPicture.asset("assets/svg/wallet.svg",
                              width: 10, color: CustomColor.darkBlue),
                          SizedBox(width: 5),
                          Text("Min 120€", style: textSmall),
                          SizedBox(width: 8),
                          SvgPicture.asset("assets/svg/car.svg",
                              width: 10, color: CustomColor.darkBlue),
                          SizedBox(width: 5),
                          Text(widget.item.cost==0?"FREE":"${widget.item.cost}€",
                              style:textSmall),
                        ],
                      )
                    ],
                  ),
                )),
            InkWell(

                child:Container(
                  padding: EdgeInsets.all(5),
                  child: SvgPicture.asset(!widget.item.favorite?"assets/svg/favorite.svg":"assets/svg/favorite_solid.svg",width: 18,),
                ),
              onTap: (){
                  setState(() {
                    widget.item.favorite=!widget.item.favorite;
                  });
              },
            )
          ],
        ),
      ),
    );
  }
}
