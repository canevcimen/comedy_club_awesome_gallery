import 'package:flutter/material.dart';
import 'package:neon_academy/comedy_club.dart';
import 'package:neon_academy/homepage_screen.dart';
import 'package:neon_academy/awesome_gallery_screen.dart';
import 'package:neon_academy/pageView_screen.dart';
import 'package:neon_academy/segmentControl_screen.dart';
import 'package:neon_academy/steppers_screen.dart';
import 'package:neon_academy/switch_screen.dart';
import 'package:neon_academy/textField_screen.dart';

import 'alert_Dialog_screen.dart';
import 'circular_Progress_Indicators_screen.dart';
import 'dragon_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: CircularProgressIndicatorsScreen(),
    );
  }
}

