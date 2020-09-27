import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviabird/widgets/aviahireIcons.dart';
class OverallRating extends StatefulWidget {
  @override
  _OverallRatingState createState() => _OverallRatingState();
}

class _OverallRatingState extends State<OverallRating> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: deviceWidth,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What is your overall rating about the candidate?',style:TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 17
            )),
            SizedBox(
              height:ScreenUtil().setHeight(24) ,
            ),
            Container(
              width: deviceWidth,
              height:ScreenUtil().setHeight(100),


              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CustomAviahireIcons.thumb_down,
                      color: Colors.black54,
                      size: 28,
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(10),
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      width: ScreenUtil().setWidth(3),
                      height: ScreenUtil().setHeight(80),
                      color: Colors.black12,
                    ),
                    Icon(
                      CustomAviahireIcons.thumb_down,
                      color: Colors.black54,
                      size: 28,
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(10),
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      width: ScreenUtil().setWidth(3),
                      height: ScreenUtil().setHeight(80),
                      color: Colors.black12,
                    ),
                    Icon(
                      CustomAviahireIcons.thumb_up,
                      color: Colors.black54,
                      size: 28,
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(10),
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      width: ScreenUtil().setWidth(3),
                      height: ScreenUtil().setHeight(80),
                      color: Colors.black12,
                    ),
                    Icon(
                      CustomAviahireIcons.thumb_up,
                      color: Colors.black54,
                      size: 28,
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}