import 'package:albatraco/Responsive.dart';
import 'package:albatraco/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ContactInfoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding*3),
      child:Responsive.IsMobile(context)
      ?Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: buildIconInfo(text: '64+',icon: Icons.supervisor_account,lable: 'Client', context:context)),
              Expanded(child: buildIconInfo(text: '193+',icon: Icons.location_on,lable: 'project', context:context)),
            ],
           ),
             Row(
               children: [
                 Expanded(child: buildIconInfo(text: '30+',icon: Icons.public,lable: 'Countries', context:context)),
                 Expanded(child: buildIconInfo(text: '13k+',icon: Icons.star,lable: 'stars', context:context)),
               ],
             )

        ],
      ):Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(text: '64+',icon: Icons.supervisor_account,lable: 'Client', context:context),
          buildIconInfo(text: '193+',icon: Icons.location_on,lable: 'project', context:context),
          buildIconInfo(text: '30+',icon: Icons.public,lable: 'Countries', context:context),
          buildIconInfo(text: '13k+',icon: Icons.star,lable: 'stars', context:context),
        ],
      ),
    );
  }

  Column buildIconInfo({
    required String text,
    required String lable,
    required IconData icon,
    required BuildContext context}) {
    return Column(
        children: [
          Icon(icon,size: 50,),
          SizedBox(height: 10,),
          Text(text,style: Theme.of(context).textTheme.headline6!.copyWith(
            color: kPrimaryColor,fontSize: 30,
          ),),
          Text(lable,style: Theme.of(context).textTheme.subtitle2,)
        ],
      );
  }
}
