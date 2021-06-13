import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      title: 'DigitalAcademy',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: ThemeConstants.APP_BACKGROUND_COLOR,
          scaffoldBackgroundColor: ThemeConstants.APP_BACKGROUND_COLOR,
          primarySwatch: MaterialColor(0XFF376AED, {
            50: Color.fromRGBO(55, 106, 237, .1),
            100: Color.fromRGBO(55, 106, 237, .2),
            200: Color.fromRGBO(55, 106, 237, .3),
            300: Color.fromRGBO(55, 106, 237, .4),
            400: Color.fromRGBO(55, 106, 237, .5),
            500: Color.fromRGBO(55, 106, 237, .6),
            600: Color.fromRGBO(55, 106, 237, .7),
            700: Color.fromRGBO(55, 106, 237, .8),
            800: Color.fromRGBO(55, 106, 237, .9),
            900: Color.fromRGBO(55, 106, 237, 1),
          }),
          fontFamily: ThemeConstants.FONT_FAMILY),
    );
  }
}
