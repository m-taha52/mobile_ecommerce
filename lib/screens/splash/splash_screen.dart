import "package:flutter/material.dart";
import 'package:ecommerce_app/screens/splash/components/body.dart';

import 'package:ecommerce_app/size_config.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //you have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body()

    );
  }
}