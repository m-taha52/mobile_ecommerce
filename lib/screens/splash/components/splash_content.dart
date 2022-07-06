import 'package:flutter/material.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:ecommerce_app/constants.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
     required this.text, 
     required this.image,
  }) : super(key: key);
  final String text, image;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget> [
        const Spacer(flex: 2,),
        Text('TOKOTO', style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
         ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,),
        const Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
           )
      ],
    );
  }
}
