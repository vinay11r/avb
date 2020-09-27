import 'package:flutter/material.dart';
import 'package:aviabird/widgets/aviahireIcons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: deviceWidth,
        height: ScreenUtil().setHeight(330),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black12),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                    width: ScreenUtil().setWidth(120),
                    child: Text('Mon  26 Sep',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 17)),
                  ),
                ),
                VerticalDivider(
                  color: Colors.black12,
                  thickness: 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30, bottom: 12, right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            CustomAviahireIcons.clock,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('11:45 am to 12:30 pm',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 17)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 28,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: ScreenUtil().setWidth(430),
                            child: Text(
                                'Aviabird Technologies Hadaspur,Amannora park,Pune',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 28,
                            color: Colors.transparent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: ScreenUtil().setWidth(360),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (ctx, index) =>Padding(
                                  padding: const EdgeInsets.only(right:4.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.blue,
                                  ),
                                )),
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              right: 4,
              top: 12,
              child: Icon(
                Icons.more_vert,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
