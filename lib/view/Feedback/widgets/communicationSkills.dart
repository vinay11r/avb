import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunicationSkills extends StatefulWidget {
  @override
  _CommunicationSkillsState createState() => _CommunicationSkillsState();
}

class _CommunicationSkillsState extends State<CommunicationSkills> {
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
      //  height:  ScreenUtil().setHeight(300),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            RichText(
              text : TextSpan(
                  text:'How would you rate the candidates communication skills?',
                  style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18
                  ),
                  children:
                  [
                    TextSpan(
                      text:' *',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0),

                    ),
                  ]
              ),
            ),
            SizedBox(
              height:ScreenUtil().setHeight(15) ,
            ),
            ListTile(
                title:Text('Very Good',style:TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 17
                )),
            ),
            ListTile(
              title:Text('Good',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            ),
            ListTile(
              title:Text('Poor',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            ),
            ListTile(
              title:Text('Very Poor',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            )
          ],
        ),
      ),
    );
  }
}
