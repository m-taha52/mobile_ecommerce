// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
    List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
 
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
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                text: splashData[index]['text'] ?? "Welcome",
                image: splashData[index]["image"] ?? 'assets/images/splash_3.png',
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
