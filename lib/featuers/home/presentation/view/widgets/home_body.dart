import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/core/widgets/custom_bottom.dart';
import 'package:quiz_app/core/widgets/custom_driver.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Text("data"),
        ),
        SizedBox(height: 25,),
        CustomDriver(
            color: AppColors.green.withOpacity(0.5),
            endIndent: 50,
            indent: 50,
        ),
        SizedBox(height: 17,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Row(
            children: [
              Radio(
                  fillColor: WidgetStateProperty.all(AppColors.green),
                  value: true, groupValue: true, onChanged: (t){}),
              Text("data")
            ],
          ),
        ),
        SizedBox(height: 20,),
        CustomDriver(
          color: AppColors.green.withOpacity(0.5),
          endIndent: 50,
          indent: 50,
        ),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 132),
          child: CustomBottom(
              colorBottom: AppColors.green,
              colorBorder: AppColors.green,
              colorTitle: AppColors.white,
              title: AppTexts.next
          ),
        ),
        SizedBox(height: 40,),
        Text(
          "(1/6)",
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 16
          ),
        )
      ],
    );
  }
}
