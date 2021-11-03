import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {

  final Widget desktop;
  final Widget ?Tablet;
  final Widget ?MobileLarge;
  final Widget Mobile;

  const Responsive({Key? key, required this.desktop, this.Tablet, this.MobileLarge,required this.Mobile}) : super(key: key);

  static bool IsDesktop(BuildContext context){
  return MediaQuery.of(context).size.width>=1024;
  }
  static bool IsTablet(BuildContext context){
    return MediaQuery.of(context).size.width<1024;
  }
  static bool IsMobileLarge(BuildContext context){
    return MediaQuery.of(context).size.width<=700;
  }
  static bool IsMobile(BuildContext context){
    return MediaQuery.of(context).size.width<=500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size=MediaQuery.of(context).size;
    if(_size.width>=1024){
      return desktop;
    }else if(_size.width>=700&& Tablet!=null){
      return Tablet!;
    }else if(_size.width>=450&& MobileLarge!=null){
      return MobileLarge!;
    }else {return Mobile;}
  }
}
