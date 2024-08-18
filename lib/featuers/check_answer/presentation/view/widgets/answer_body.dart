import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/featuers/check_answer/presentation/view/widgets/items_check_answer.dart';
import 'package:quiz_app/featuers/home/presentation/controller/home_provider.dart';

class AnswerBody extends StatelessWidget {
   AnswerBody({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<HomeProvider>(context).qustionList.length,
      itemBuilder: (context, index) {
        int countIndex = index+1;
        return ItemsCheckAnswer(
          index: index,
          countIndex: countIndex,
        );
      },
    );
  }
}
