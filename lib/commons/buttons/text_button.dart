import 'package:flutter/material.dart';
import 'package:digital_academy/constants/theme_constants.dart';

class TextButtonWidget extends StatelessWidget {
  final String buttonName;

  final Function onPressed;

  const TextButtonWidget({required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Text(
        buttonName,
        style: TextStyle(
            fontFamily: ThemeConstants.FONT_FAMILY,
            color: ThemeConstants.TEXT_BUTTON_COLOR,
            fontWeight: FontWeight.w500,
            fontSize: ThemeConstants.fontSize18),
      ),
    );
  }
}
