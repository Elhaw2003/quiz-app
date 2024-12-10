import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
class CustomAbbpar extends StatelessWidget {
  const CustomAbbpar.CustomAppbar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //automaticallyImplyLeading: false,>>( using for remove arrow back in abbpar
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.mainColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: AppColors.white
        ),
      ),
      centerTitle: true,
    );
  }
}
