import 'package:albatraco/Widget/menu/Goals.dart';
import 'package:albatraco/Widget/menu/logo.dart';
import 'package:albatraco/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ContactInfo.dart';

class Side_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactInfo(),
                  Divider(),
                  Goals(),
                  Divider(),
                  SizedBox(height: kDefaultPadding,),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/download.svg'),
                          SizedBox(width: kDefaultPadding/2,),
                          Text(
                            'download brochure',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                        ],
                      ),),
                  Container(
                    margin: EdgeInsets.only(top: kDefaultPadding*2),
                    color: kSecondaryColor,
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/twitter.svg')),
                        IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/dribble.svg')),
                          Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
