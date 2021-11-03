import 'package:albatraco/Widget/main/recommendationCard.dart';
import 'package:albatraco/constant.dart';
import 'package:albatraco/models/recommendation.dart';
import 'package:flutter/material.dart';
class recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" Client Recommendation:",style: Theme.of(context).textTheme.headline5,),
          SizedBox(height: kDefaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:List.generate(demoRecommendations.length, (index) => Padding(
                  padding: EdgeInsets.only(right: kDefaultPadding),
                  child:RecommendationCard(
                    recommendation: demoRecommendations[index],
                  )
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

