import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/data/model/qustion_model.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/featuers/home/presentation/view/widgets/show_dialog.dart';

class HomeProvider extends ChangeNotifier{
  List <QuestionModel> qustionList = [

    QuestionModel(title: "كم عدد سور القرآن الكريم؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
    QuestionModel(title: "jhhhjhj؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
    QuestionModel(title: "كم عدد سور القرآن الكريم؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
    QuestionModel(title: "كم عدد سور القرآن الكريم؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
    QuestionModel(title: "كم عدد سور القرآن الكريم؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
  ];


  int quistionIndex = 0;
  int count = 1;
  int score = 0;
  checkAnswer(context){
    for(int i = 0 ; i<Provider.of<HomeProvider>(context).qustionList.length;i++){
      if(Provider.of<HomeProvider>(context).qustionList[i].correctAnswer == Provider.of<HomeProvider>(context).qustionList[i].selectedAnswer){
        score +=10;
      }
    }
  }
  plusQuistionIndex(context){
    if(quistionIndex < Provider.of<HomeProvider>(context).qustionList.length-1){
      if(Provider.of<HomeProvider>(context).qustionList[quistionIndex].selectedAnswer != null ){
        quistionIndex++;
        count++;
        notifyListeners();
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: AppColors.green,
                content: Text(
                  textAlign: TextAlign.end,
                  "Please choose one answer",
                )
            ));
      }
    }
    else{
      checkAnswer(context);
      showDialog(
          context: context,
          builder: (c){
            return customShowDialog();
          }
      );
    }
  }



}