import 'package:albatraco/constant.dart';
import 'package:flutter/material.dart';
class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPadding(title: 'Address',text: 'Salamiyah highway'),
        buildPadding(title: 'Country', text: 'Syria/Hama'),
        buildPadding(title: 'Email', text: 'Al_Batrco@gmail.com'),
        buildPadding(title: 'phone', text: '+963 0947607648'),
        buildPadding(title: 'MyWebsite', text: 'saeed@gmail.com'),
      ],
    );
  }

  Padding buildPadding({ required String title, required String text}) {
    return Padding(
        padding: EdgeInsets.only(bottom: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(color: Colors.white),),
            Text(text),
          ],
        ),
      );
  }
}
