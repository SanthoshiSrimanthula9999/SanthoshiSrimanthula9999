import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () => Get.toNamed(Routes.ILLUSTRATION));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ThemeConstants.WHITE_COLOR,
        child: Center(child: buildIDALogo()));
  }

  buildIDALogo() {
    return Image.asset(
      ImageConstants.SPLASH_LOGO,
      width: 250,
    );
  }
}
