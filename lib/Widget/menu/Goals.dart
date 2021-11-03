import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Goals",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals( text: 'high quality'),
        buildGoals( text: 'best price'),
        buildGoals( text: 'development'),
        ],
    );

  }

  Padding buildGoals({required String text}) {
    return Padding(
         padding: EdgeInsets.only(bottom: kDefaultPadding/2),
         child: Row(
          children: [
               SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(width: kDefaultPadding/2,),
            Text(text),
          ],
      ),
       );
  }
}
