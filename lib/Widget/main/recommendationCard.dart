import 'package:albatraco/models/recommendation.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
class RecommendationCard extends StatelessWidget {


  final Recommendation recommendation;

  const RecommendationCard({Key? key,required this.recommendation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding/2,),
          Text(recommendation.text!,
            maxLines: 4,
            style:TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}
