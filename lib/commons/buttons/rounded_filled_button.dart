import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digital_academy/constants/theme_constants.dart';

class RoundedFilledButtonWidget extends StatelessWidget {
  final String buttonName;
  final Function onPressed;

  const RoundedFilledButtonWidget(
      {required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 70,
        color: ThemeConstants.PRIMARY_COLOR,
        disabledTextColor: ThemeConstants.WHITE_COLOR,
        disabledColor: ThemeConstants.PRIMARY_COLOR,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: ThemeConstants.fontSize20,
            color: ThemeConstants.WHITE_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {
          onPressed();
        });
  }
}
