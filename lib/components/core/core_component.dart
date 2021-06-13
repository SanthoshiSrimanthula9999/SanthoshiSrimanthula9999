import 'package:digital_academy/commons/buttons/bottom_bar.dart';
import 'package:digital_academy/components/about/about_component.dart';
import 'package:digital_academy/components/home/home_component.dart';
import 'package:digital_academy/components/my_course/my_course_component.dart';
import 'package:digital_academy/components/referral/referral_component.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CoreComponent extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'file download',
        child: new Icon(Icons.file_download),
      ),
      body: Obx(
        () => buildBody(),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }

  Center buildBody() {
    return Center(
        child: (navController.selectedIndex == 0)
            ? HomeComponent()
            : (navController.selectedIndex == 1)
                ? Container(child: MyCourseComponent())
                : (navController.selectedIndex == 2
                    ? Container(child: ReferralComponent())
                    : AboutComponent()));
  }
}

class NavController extends GetxController {
  final _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;
}
