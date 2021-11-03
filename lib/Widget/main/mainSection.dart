import 'package:albatraco/Widget/main/Recomandation.dart';
import 'package:albatraco/Widget/main/project.dart';
import 'package:albatraco/models/project.dart';
import 'package:albatraco/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'ContactInfoUnderBanner.dart';
import 'homeBanner.dart';
class mainSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen(
        mainSection:SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          ContactInfoBanner(),
          project(),
          recommendation(),

        ],
      ),
    ));
  }
}
