import 'package:flutter/material.dart';
import 'package:neon_academy/comedy_club.dart';
import 'package:neon_academy/homepage_screen.dart';
import 'package:neon_academy/awesome_gallery_screen.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AwesomeGallery(),
    );
  }
}

