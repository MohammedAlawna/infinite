import 'package:flutter/material.dart';
import 'package:infinite/responsive/mobile_screen_layout.dart';
import 'package:infinite/responsive/responsive_layout_screen.dart';
import 'package:infinite/responsive/web_screen_layout.dart';
import 'package:infinite/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infinite',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
         webScreenLayout: WebScreenLayout(),
         ),
    );
  }
}

