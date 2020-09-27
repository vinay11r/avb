import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferralTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width:  MediaQuery.of(context).size.width,
            height:  ScreenUtil().setHeight(150),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      height:ScreenUtil().setHeight(160),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.blue,

                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left:70.0,),
                    child: Column(

                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Walter Freeman',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 18
                            )),
                            Text('interview',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                            )),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('HR Associate',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14,
                              fontWeight: FontWeight.w300
                            )),
                            Text('12 Feb 20',style:TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                            )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
