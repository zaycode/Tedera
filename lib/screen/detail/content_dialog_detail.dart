import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/style_constant.dart';

class ContentDialogDetail extends StatefulWidget {
  @override
  _ContentDialogDetailState createState() => _ContentDialogDetailState();
}

class _ContentDialogDetailState extends State<ContentDialogDetail> {

  List<String> list=[
      "Small Pizza 30cm",
      "Normal Pizza 40cm",
      "Large Pizza 50cm"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 85,
                height: 85,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: AssetImage("assets/images/thumbnail.jpg"),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Pizza Margharita",
                        style: textHeader4
                    ),
                    SizedBox(height: 4),
                    Text(
                        "Tomatosauce and Guada, Cheese ketchup and maccaroni. with Tomatosauce and Guada, Cheese ketchup.",
                        style: textDefault)
                  ],
                ),
              ),
              SizedBox(width: 30),

            ],
          ),
          SizedBox(height: 8),
          Text(
            "Option",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
          ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8),
              itemBuilder: (context,index){
                return Row(
                  children:[
                    Expanded(
                      flex:2,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: CustomColor.primary, width: 1 ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Text(
                            list[index],
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffafafa),
                        ),
                        padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 7 ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "-",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff7e8389),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Color(0xff414141),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "+",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff7e8389),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "5,95 €",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xffec5050),
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              }
          ),
          SizedBox(height: 16),
          Text(
            "Extra",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8),
              itemBuilder: (context,index){
                return Row(
                  children:[
                    Expanded(
                      flex:2,
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: CustomColor.primary,
                            value: index==0?true:false,
                            onChanged: (bool newValue) {

                            },
                          ),

                          Text(
                            list[index],
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffafafa),
                        ),
                        padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 7 ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "-",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff7e8389),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Color(0xff414141),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 8,
                              height: 12,
                              child: Text(
                                "+",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff7e8389),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "5,95 €",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xffec5050),
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              }
          )

        ],
      ),
    );
  }
}
