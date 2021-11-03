import 'package:albatraco/Responsive.dart';
import 'package:albatraco/Widget/menu/Side_Menu.dart';
import 'package:albatraco/constant.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {

  final  Widget mainSection;

  const HomeScreen({Key? key,  required this.mainSection}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.IsDesktop(context)?null:
      AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context)=>IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
      ),
      drawer: Side_menu(),
      body: SafeArea(
      child:Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1440.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.IsDesktop(context))
              Expanded(
                flex: 2,
                child:Side_menu(),
              ),
              SizedBox(width: kDefaultPadding,),
              Expanded(
                flex: 7,
                child:mainSection,
              ),
              SizedBox(width: kDefaultPadding,),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
