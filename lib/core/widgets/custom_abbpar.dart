import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
class CustomAbbpar extends StatelessWidget {
  const CustomAbbpar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
      ),
      title: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: AppColors.white
        ),
      ),
      centerTitle: true,
    );
  }
}
