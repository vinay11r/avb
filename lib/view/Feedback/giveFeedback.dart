import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviabird/view/Feedback/widgets/user.dart';
import 'package:aviabird/view/Feedback/widgets/describeInterview.dart';
import 'package:aviabird/view/Feedback/widgets/candidatePeformance.dart';
import 'package:aviabird/view/Feedback/widgets/candidateRating.dart';
import 'package:aviabird/view/Feedback/widgets/upload.dart';
import 'package:aviabird/view/Feedback/widgets/overallPerformance.dart';
import 'package:aviabird/view/Feedback/widgets/overallRating.dart';
import 'package:aviabird/view/Feedback/widgets/communicationSkills.dart';
import 'package:aviabird/view/schedule.dart';

import 'package:aviabird/widgets/aviahireIcons.dart';

class GiveFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar (
        backgroundColor: Colors.white,
        title: Text('Give Feedback',style:TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black
        )),

        leading: Icon(Icons.arrow_back,color: Colors.blue,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check,color: Colors.blue,),
            onPressed: (){},
          )
        ],



      ),
  //    bottomNavigationBar: OverallRating(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                 User(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  DescribeInterview(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  CommunicationSkills(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  CandidatePerformance(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  CandidateRating(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  Upload(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                  OverallPerformance(),
                  SizedBox(height:ScreenUtil().setHeight(24) ,),
                ],
              ),
            ),

            OverallRating(),
          ],
        ),
      ),
    );
  }
}
