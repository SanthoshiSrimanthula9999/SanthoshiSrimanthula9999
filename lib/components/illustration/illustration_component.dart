import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IllustrationComponent extends StatelessWidget {
  const IllustrationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: ThemeConstants.WHITE_COLOR,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(43.0),
                  bottomRight: Radius.circular(43.0)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ThemeConstants.height40,
                ),
                Container(
                  height: ThemeConstants.height407,
                  child: Image.asset(
                    ImageConstants.ILLUSTRATION_IMAGE,
                  ),
                ),
                SizedBox(
                  height: ThemeConstants.height33,
                ),
              ],
            ),
          ),
          SizedBox(
            height: ThemeConstants.height33,
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'Best Digital Marketing',
                  style: TextStyle(
                      color: ThemeConstants.TITLE_COLOR,
                      fontFamily: ThemeConstants.FONT_FAMILY,
                      fontSize: ThemeConstants.fontSize31,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Training Institue in',
                  style: TextStyle(
                      color: ThemeConstants.TITLE_COLOR,
                      fontFamily: ThemeConstants.FONT_FAMILY,
                      fontSize: ThemeConstants.fontSize31,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Hyderabad',
                  style: TextStyle(
                      color: ThemeConstants.TITLE_COLOR,
                      fontFamily: ThemeConstants.FONT_FAMILY,
                      fontWeight: FontWeight.bold,
                      fontSize: ThemeConstants.fontSize31),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ThemeConstants.height55,
          ),
          Container(
            width: ThemeConstants.width251,
            child: MaterialButton(
                height: ThemeConstants.height83,
                color: ThemeConstants.PRIMARY_COLOR,
                disabledTextColor: ThemeConstants.WHITE_COLOR,
                disabledColor: ThemeConstants.PRIMARY_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Start",
                      style: TextStyle(
                        color: ThemeConstants.WHITE_COLOR,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: ThemeConstants.width29,
                    ),
                    Container(
                      width: ThemeConstants.width71,
                      height: ThemeConstants.height43,
                      decoration: BoxDecoration(
                          color: ThemeConstants.WHITE_COLOR,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: ThemeConstants.PRIMARY_COLOR,
                        size: 16,
                      ),
                    )
                  ],
                ),
                onPressed: () {
                  Get.toNamed(Routes.WELCOME);
                }),
          )
        ],
      ),
    );
  }
}
