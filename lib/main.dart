import 'package:albatraco/Widget/main/mainSection.dart';
import 'package:albatraco/constant.dart';
import 'package:albatraco/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white).copyWith(bodyText1: TextStyle(color: kBodyTextColor),
        bodyText2: TextStyle(color: kBodyTextColor)),
      ),
      home: mainSection(),
    );
  }
}