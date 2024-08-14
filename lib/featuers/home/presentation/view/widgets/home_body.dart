import 'package:flutter/material.dart';
import 'package:quiz_app/core/data/qustion_list.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/core/widgets/custom_bottom.dart';
import 'package:quiz_app/core/widgets/custom_driver.dart';
import 'package:quiz_app/featuers/home/presentation/view/widgets/show_dialog.dart';

class HomeBody extends StatefulWidget {
   HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int quistionIndex = 0;
  int count = 1;
  plusQuistionIndex(){
    if(quistionIndex < qustionList.length-1){
      if(qustionList[quistionIndex].selectedAnswer != null ){
        quistionIndex++;
        count++;
        setState(() {});
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
      showDialog(
          context: context,
          builder: (c){
            return customShowDialog();
          }
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            qustionList[quistionIndex].title,
            style: TextStyle(
                color: AppColors.green,
                fontWeight: FontWeight.w700,
                fontSize: 14
            ),
          ),
        ),
        SizedBox(height: 25,),
        CustomDriver(
            color: AppColors.green.withOpacity(0.5),
            endIndent: 50,
            indent: 50,
        ),
        SizedBox(height: 17,),
        // ( ... )  >>  cascade operator
        ...qustionList[quistionIndex].answers.map(
            (answer){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    Radio(
                        fillColor: WidgetStateProperty.all(AppColors.green),
                        value: answer,
                        groupValue: qustionList[quistionIndex].selectedAnswer,
                        onChanged: (t) {
                      qustionList[quistionIndex].selectedAnswer = t;
                      setState(() {});
                    }),
                    Expanded(
                      child: Text(
                        answer,
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
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
            onTap: (){
              plusQuistionIndex();
            },
              colorBottom: AppColors.green,
              colorBorder: AppColors.green,
              colorTitle: AppColors.white,
              title: quistionIndex == qustionList.length - 1 ? AppTexts.send:AppTexts.next
          ),
        ),
        SizedBox(height: 40,),
        Center(
          child: Text(
            "(${count}/${qustionList.length})",
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),
          ),
        )
      ],
    );
  }
}
