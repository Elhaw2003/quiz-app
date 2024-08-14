import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/core/widgets/custom_abbpar.dart';
import 'package:quiz_app/featuers/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: CustomAbbpar(text: AppTexts.quizApp,),
      ),
      body: HomeBody(),
    );
  }
}
