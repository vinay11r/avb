import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CandidatePerformance extends StatefulWidget {
  @override
  _CandidatePerformanceState createState() => _CandidatePerformanceState();
}

class _CandidatePerformanceState extends State<CandidatePerformance> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  void _value1Changed(bool newValue) => setState(() {
    value1 = newValue;
    if (value1) {
    }else{
    }
  });
  void _value2Changed(bool newValue) => setState(() {
    value2 = newValue;
    if (value2) {
    }else{
    }
  });
  void _value3Changed(bool newValue) => setState(() {
    value3 = newValue;
    if (value3) {
    }else{
    }
  });
  void _value4Changed(bool newValue) => setState(() {
    value4 = newValue;
    if (value4) {
    }else{
    }
  });
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
      //  height:  ScreenUtil().setHeight(300),
      child: Padding(
        padding: const EdgeInsets.only(left:2.0,bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text('How did you find the candidate?',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18
              )),
            ),

            ListTile(
              leading:Container(

                width: 9,
                child: Checkbox(
                    value: value1,
                    onChanged: _value1Changed
                ),
              ) ,
              title:Text('Intuitive',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            ),
            ListTile(
              leading:Container(
                width: 9,
                child: Checkbox(
                    value: value2,
                    onChanged: _value2Changed,

                ),
              ) ,
              title:Text('Fit for the company',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            ),
            ListTile(
              leading:Container(
                width: 9,
                child: Checkbox(
                    value: value3,
                    onChanged: _value3Changed
                ),
              ) ,
              title:Text('Potential to learn',style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 17
              )),
            ),
            ListTile(
              leading:Container(
                width: 9,
                child: Checkbox(
                    value: value4,
                    onChanged: _value4Changed
                ),
              ) ,
              title:Text('Not a good fit for the company',style:TextStyle(
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
