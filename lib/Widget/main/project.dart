import 'package:albatraco/Responsive.dart';
import 'package:albatraco/Widget/main/projectCard.dart';
import 'package:albatraco/constant.dart';
import 'package:albatraco/models/product.dart';
import 'package:flutter/material.dart';
class project  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Our Product", style: Theme
            .of(context)
            .textTheme
            .headline6,),
       Responsive(
         desktop:  buildGridView(
           CrossAxisSpacing: 3,
           itemBuilder:  (context, index) => buildProject(product:demoProduct[index],
            ), ItemCount: demoProduct.length,
               ChildAspectRatio: 0.755,),
         Mobile:  buildGridView(
                CrossAxisSpacing: 1,
               itemBuilder:  (context, index) => buildProject(product:demoProduct[index],
               ), ItemCount: demoProduct.length,
                 ChildAspectRatio: 0.755,),
        MobileLarge:buildGridView(
                    CrossAxisSpacing: 2,
                     itemBuilder:  (context, index) => buildProject(product:demoProduct[index],
               ), ItemCount: demoProduct.length,
                     ChildAspectRatio: 0.755,),
         Tablet:  buildGridView(
           CrossAxisSpacing: MediaQuery.of(context).size.width<900?2:3,
           itemBuilder:  (context, index) => buildProject(product:demoProduct[index],
           ), ItemCount: demoProduct.length,
           ChildAspectRatio: 0.755,),


       ),

      ],
    );
  }

  GridView buildGridView({
  required int ItemCount,
    required int CrossAxisSpacing,
    required double ChildAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
}) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: ItemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: CrossAxisSpacing,
          childAspectRatio: ChildAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder:itemBuilder,
      );
  }
}