import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/utilies/app_texts.dart';
import 'package:quiz_app/core/widgets/custom_bottom.dart';
import 'package:quiz_app/featuers/home/presentation/controller/home_provider.dart';

class customShowDialog extends StatelessWidget {
   customShowDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: AppColors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.close,color: AppColors.black,)
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.green,width: 0.5)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75,vertical: 30),
                  child: Column(
                    children: [
                      Text(
                          AppTexts.result,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 18,),
                      Text(
                          "(${Provider.of<HomeProvider>(context).score}/${Provider.of<HomeProvider>(context).qustionList.length*10})",
                        style: TextStyle(
                            color: AppColors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              CustomBottom(
                  colorBottom: AppColors.darkWhite,
                  colorBorder: AppColors.green,
                  colorTitle: AppColors.green,
                  title: AppTexts.checkAnswers
              ),
              SizedBox(height: 16,),
              CustomBottom(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  colorBottom: AppColors.green,
                  colorBorder: AppColors.green,
                  colorTitle: AppColors.white,
                  title: AppTexts.reStart
              ),
            ],
          ),
        ),
      ],
    );
  }
}
