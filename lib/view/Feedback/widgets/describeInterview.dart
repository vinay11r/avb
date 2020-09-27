import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescribeInterview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
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
                      text:'How Would You Describe the interview in one word?',
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
                  height:ScreenUtil().setHeight(24) ,
                ),
                Container(
                  height: 40,
                  width: deviceWidth,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(17,4,0,4),
                        hintText: 'Type here...',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: Colors.black54,
                        ),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height:ScreenUtil().setHeight(24) ,
        ),
        Container(
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
                     text:'How Would You Describe the interview and Candidate answers?',
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
                  height:ScreenUtil().setHeight(24) ,
                ),
                Container(
                  //   height: 40,
                  width: deviceWidth,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                    minLines: 6,
                    maxLines: 8,
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(17,4,0,4),
                        hintText: 'Type here...',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: Colors.black54,
                        ),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
