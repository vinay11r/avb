import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
      ),
      height:  ScreenUtil().setHeight(300),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,

            ),
            Text('Feedback for Benjamin Hayes',style:TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18
            )),
            Text('Front End Developer',style:TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.blue,
                fontSize: 15
            )),


          ],
        ),
      ),
    );
  }
}
