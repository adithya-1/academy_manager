import 'dart:math';

import 'package:academy_manager/Constants.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

const PrimaryColor = const Color(0xFFf96327);

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController rotationController;

  @override
  void initState() {
    rotationController = AnimationController(
        vsync: this, duration: Duration(seconds: 5), upperBound: pi * 2);
    rotationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Text(
        'Academy Manager',
        style: TextStyle(
          color: Constants.greenColor,
          fontSize: 30,
          fontFamily: "Horizon",
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
