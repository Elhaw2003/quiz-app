import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.colorBottom, required this.colorBorder, required this.colorTitle, required this.title, this.onTap});
  final Color colorBottom;
  final Color colorBorder;
  final Color colorTitle;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: colorBorder,width: 1),
          color: colorBottom
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              color: colorTitle,
              fontSize: 17,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
