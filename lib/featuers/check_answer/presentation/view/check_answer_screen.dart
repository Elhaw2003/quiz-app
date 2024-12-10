import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/core/widgets/custom_abbpar.dart';
import 'package:quiz_app/featuers/check_answer/presentation/view/widgets/answer_body.dart';

class CheckAnswerScreen extends StatelessWidget {
  const CheckAnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAbbpar.CustomAppbar(
          text: AppTexts.checkAnswer,
        ),
      ),
      body: AnswerBody(),
    );
  }
}
