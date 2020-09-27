import 'package:aviabird/view/Feedback/giveFeedback.dart';
import 'package:aviabird/view/referrals/addReferrals.dart';
import 'package:aviabird/view/referrals/referralTab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:GiveFeedback()
    );
  }
}


