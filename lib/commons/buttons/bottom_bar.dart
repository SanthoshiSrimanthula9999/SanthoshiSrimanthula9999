import 'package:digital_academy/components/core/core_component.dart';
import 'package:digital_academy/constants/image_constants.dart';

import 'package:digital_academy/constants/theme_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomBarWidget extends StatelessWidget {
  final NavController navController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: Get.height * 0.0915178571428571,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(112, 112, 112, 1.0),
              blurRadius: 7,
            ),
          ],
        ),
        child: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  ImageConstants.HOME_ICON,
                  color: ThemeConstants.APP_GREY_COLOR,
                ),
                label: "Home",
                activeIcon: Image.asset(
                  ImageConstants.HOME_ICON,
                  color: ThemeConstants.PRIMARY_COLOR,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  ImageConstants.MY_COURSE_ICON,
                  color: ThemeConstants.APP_GREY_COLOR,
                ),
                label: "My Course",
                activeIcon: Image.asset(
                  ImageConstants.MY_COURSE_ICON,
                  color: ThemeConstants.PRIMARY_COLOR,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  ImageConstants.REFERREL_ICON,
                  color: ThemeConstants.APP_GREY_COLOR,
                ),
                label: "Referral",
                activeIcon: Image.asset(
                  ImageConstants.REFERREL_ICON,
                  color: ThemeConstants.PRIMARY_COLOR,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.ABOUT_ICON),
                label: "About IDA",
                activeIcon: Image.asset(
                  ImageConstants.ABOUT_ICON,
                  color: ThemeConstants.PRIMARY_COLOR,
                ),
              ),
            ],
            currentIndex: navController.selectedIndex,
            onTap: (index) {
              navController.selectedIndex = index;
            },
            selectedFontSize: 13,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            unselectedFontSize: 13,
            iconSize: 20,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
