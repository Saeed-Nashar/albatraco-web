import 'package:albatraco/Responsive.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: Responsive.IsMobile(context)?1:1.7,
        child: Stack(
          fit: StackFit.expand,
            children:[
              Image.asset('assets/images/background.jpg',fit: BoxFit.cover,),
              Container(
                color: kDarkColor.withOpacity(0.10),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Building a great future \n for all of us !',
                      style:Responsive.IsDesktop(context)?
                    Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white,fontWeight: FontWeight.bold,
                    ): Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(height: kDefaultPadding,),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                          horizontal: kDefaultPadding*2,
                        ),
                       backgroundColor: kPrimaryColor,
                      ),
                        onPressed: (){}, child: Text('Contact us',),),
                  ],
                ),
              ),
            ],
        ),
    
    );
  }
}
