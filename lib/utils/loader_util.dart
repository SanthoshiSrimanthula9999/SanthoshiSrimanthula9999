import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

showLoadingDialog() {
  return Get.dialog(
    LoadingDialog(
      color: Get.theme.primaryColor,
    ),
    barrierDismissible: false,
    useSafeArea: false,
  );
}

closeLoadingDialog() {
  if (Get.isDialogOpen == true) {
    Get.back();
  }
}

class LoadingDialog extends StatelessWidget {
  final Color color;
  const LoadingDialog({required this.color});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
          child: Container(
        width: Get.width,
        height: Get.height,
        color: ThemeConstants.WHITE_COLOR,
        child: Center(
            child: SpinKitCircle(
          color: ThemeConstants.PRIMARY_COLOR,
          size: 50.0,
        )),
      )),
    );
  }
}

Widget showCustomLoader() {
  return Center(
      child: SpinKitCircle(
    color: ThemeConstants.PRIMARY_COLOR,
    size: 50.0,
  ));
}
