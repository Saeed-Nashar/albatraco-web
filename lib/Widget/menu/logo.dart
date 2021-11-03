import 'package:flutter/material.dart';

import '../../constant.dart';
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: kSecondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2,),
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: 100,
              ),
              Spacer(),
              Text(
                "Al_Batraco",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2,
              ),
              Text(
                "Import and export of marble,\ngranite and natural stone ",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
              Spacer(flex: 2,),
            ],
          ),
        ),
      );
    }
}
