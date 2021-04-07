import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tedera/screen/detail/detail_screen.dart';
import 'package:tedera/screen/listing_model.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';
import 'package:tedera/util/util.dart';

class ItemStore extends StatelessWidget {


  ItemStore();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
            builder: (BuildContext context) => DetailScreen()
        ));
      },
      child: Container(
        height: Util().isPhone() ? 96 : 120,
        padding: EdgeInsets.only(top: 5, left: 5, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Util().isPhone() ? 87 : 109,
              height: Util().isPhone() ? 87 : 109,
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
                              style: titleStyle),
                          SizedBox(height: 2),
                          Text("Fast Food, Drink, Coffe, Pizza, Burger...",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: subTitle)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 10,
                            color: CustomColor.amber,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.7",
                            style: TextStyle(
                                color: CustomColor.darkBlue,
                                fontSize: 12,
                                height: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 4),
                          Text("(1256 Reviews)", style: TextStyle(fontSize: 8,color: CustomColor.gray))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/clock.svg",
                                width: 10,
                                color: CustomColor.darkBlue,
                              ),
                              SizedBox(width: 3),
                              Text("30 min",
                                  style: Theme.of(context).textTheme.overline),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/location.svg",
                                  width: 10, color: CustomColor.darkBlue),
                              SizedBox(width: 3),
                              Text("2.1 Km",
                                  style: Theme.of(context).textTheme.overline),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/wallet.svg",
                                  width: 10, color: CustomColor.darkBlue),
                              SizedBox(width: 3),
                              Text("Min 120€",
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/car.svg",
                                  width: 10, color: CustomColor.darkBlue),
                              SizedBox(width: 3),
                              Text("30€",
                                  style: Theme.of(context).textTheme.overline),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            InkWell(
              child: Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(left: 8,right:8),
                child: Icon(
                  Icons.favorite_border,
                  size: 18,
                  color: CustomColor.icon,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
