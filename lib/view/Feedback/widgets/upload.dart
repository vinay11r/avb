import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return    Container(
      width: deviceWidth,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Upload notes about candidate? ',style:TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18
            )),
            SizedBox(
              height:ScreenUtil().setHeight(24) ,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(17,8,17,8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.blue),
                ),
                child:Text('Upload',style:TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                    fontSize: 15
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
