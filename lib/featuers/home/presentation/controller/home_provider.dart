import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/data/model/qustion_model.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/featuers/home/presentation/view/widgets/show_dialog.dart';

class HomeProvider extends ChangeNotifier{
  List <QuestionModel> qustionList = [
    QuestionModel(title: "كم عدد سور القرآن الكريم؟", answers: ["110","100","90","114"], correctAnswer: "114", selectedAnswer: null),
    QuestionModel(title: "من هو أول من آمن برسالة النبي محمد صلى الله عليه وسلم من الرجال؟", answers: ["ابوبكر","عمر بن الحطاب","علي بن ابي طالب","عثمان بن عفان"], correctAnswer: "ابوبكر", selectedAnswer: null),
    QuestionModel(title: "كم عدد أجزاء القرآ الكريم؟", answers: ["110","40","30","35"], correctAnswer: "30", selectedAnswer: null),
    QuestionModel(title: "ما هو أول مسجد بني في الإسلام؟", answers: ["المسجد الحرام","المسجد النبوي","مسجد قباء","المسجد الأقصى"], correctAnswer: "مسجد قباء", selectedAnswer: null),
    QuestionModel(title: "كم عدد أركان الإسلام؟", answers: [" ثلاثة"," أربعة","خمسة"," ستة"], correctAnswer: "خمسة", selectedAnswer: null),
    QuestionModel(title: "ما هي السورة التي تعادل ثلث القرآن؟", answers: ["سورة الإخلاص","سورة الفاتحة","سورة الكوثر"," سورة الناس"], correctAnswer: "سورة الإخلاص", selectedAnswer: null),
    QuestionModel(title: "ما هو اسم والد النبي محمد صلى الله عليه وسلم؟", answers: ["عبد المطلب","عبد الله","أبو طالب","أبو لهب"], correctAnswer: "عبد الله", selectedAnswer: null),
    QuestionModel(title: "في أي شهر فرض صيام رمضان؟", answers: ["محرم","رجب","شعبان","رمضان"], correctAnswer: "شعبان", selectedAnswer: null),
    QuestionModel(title: "ما هو الإسم الأول للنبي محمد صلى الله عليه وسلم قبل البعثة؟", answers: ["الصادق","الأمين","الشريف","الحكيم"], correctAnswer: "الأمين", selectedAnswer: null)
  ];
  int quistionIndex = 0;
  int count = 1;
  int score = 0;
  checkAnswer(context){
    for(int i = 0 ; i<Provider.of<HomeProvider>(context,listen: false).qustionList.length;i++){
      if(Provider.of<HomeProvider>(context,listen: false).qustionList[i].correctAnswer == Provider.of<HomeProvider>(context,listen: false).qustionList[i].selectedAnswer){
        score +=10;
      }
    }
  }
  plusQuistionIndex(context){
    if(quistionIndex < Provider.of<HomeProvider>(context,listen: false).qustionList.length-1){
      if(Provider.of<HomeProvider>(context,listen: false).qustionList[quistionIndex].selectedAnswer != null ){
        quistionIndex++;
        count++;
        notifyListeners();
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: AppColors.mainColor,
                content: Text(
                  AppTexts.pleaseChooseOneAnswer,
                  textAlign: TextAlign.end,
                )
            ));
      }
    }
    else{
      checkAnswer(context);
      showDialog(
          //>> (barrierDismissible: false)>> حتى لا يتم غلق الـ dialog عند الضغط على الشاشه
          barrierDismissible: false,
          context: context,
          builder: (c){
            return customShowDialog();
          }
      );
    }
  }
  changeSelectedAnswersToNull(){
    for(int i = 0 ; i< qustionList.length;i++){
      qustionList[i].selectedAnswer = null;
    }
  }
 reStart(context){
    quistionIndex = 0;
    changeSelectedAnswersToNull();
    count = 1;
    score = 0;
    Navigator.pop(context);
    notifyListeners();
 }
}