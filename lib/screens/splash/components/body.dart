// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child: 
    SizedBox(
      width: double.infinity,
      child: Column(
        children:  <Widget>[
          Expanded(
              flex: 3,
              
              child: PageView.builder(
                itemBuilder: (context, index) => SplashContent(
                text: "Welcome to Tokoto, Let's Shop",
                image: 'assets/images/splash_1.png',
              )
              )),
            Expanded(
              flex: 2,
              child: SizedBox(),
              ),
        ],
       ),
    ),
    );
  }
}

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
        Text(text),
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
