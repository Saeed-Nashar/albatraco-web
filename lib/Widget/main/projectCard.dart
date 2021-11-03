import 'package:albatraco/models/product.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class buildProject extends StatelessWidget {
  final Product product;


  const buildProject({Key? key,required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(kDefaultPadding),
      color:kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(product.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(height: kDefaultPadding,),
          Text(product.title!,
            maxLines: 2,
            overflow:TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: kDefaultPadding,),
          Expanded(child: Text(product.description!,style: TextStyle(height: 1.5),)),
          SizedBox(height: kDefaultPadding,),
          TextButton(onPressed: (){}, child: Text("More info >",style: TextStyle(color: kPrimaryColor),))
        ],
      ),
    );
  }
}
