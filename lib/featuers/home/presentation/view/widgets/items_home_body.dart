import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/widgets/custom_bottom.dart';
import 'package:quiz_app/featuers/home/presentation/controller/home_provider.dart';

import '../../../../../core/utilies/app_texts.dart';
import '../../../../../core/widgets/custom_driver.dart';

class ItemsHomeBody extends StatefulWidget {
  const ItemsHomeBody({super.key});

  @override
  State<ItemsHomeBody> createState() => _ItemsHomeBodyState();
}

class _ItemsHomeBodyState extends State<ItemsHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            Provider.of<HomeProvider>(context).qustionList[Provider.of<HomeProvider>(context).quistionIndex].title,
            style: TextStyle(
                color: AppColors.mainColor,
                fontWeight: FontWeight.w700,
                fontSize: 14
            ),
          ),
        ),
        SizedBox(height: 25,),
        CustomDriver(
          color: AppColors.mainColor.withOpacity(0.5),
          endIndent: 50,
          indent: 50,
        ),
        SizedBox(height: 17,),
        // ( ... )  >>  cascade operator
        ...Provider.of<HomeProvider>(context).qustionList[Provider.of<HomeProvider>(context).quistionIndex].answers.map(
                (answer){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    Radio(
                        fillColor: WidgetStateProperty.all(AppColors.mainColor),
                        value: answer,
                        groupValue: Provider.of<HomeProvider>(context).qustionList[Provider.of<HomeProvider>(context).quistionIndex].selectedAnswer,
                        onChanged: (t) {
                          Provider.of<HomeProvider>(context,listen: false).qustionList[Provider.of<HomeProvider>(context,listen: false).quistionIndex].selectedAnswer = t;
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
          color: AppColors.mainColor.withOpacity(0.5),
          endIndent: 50,
          indent: 50,
        ),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 132),
          child: CustomBottom(
              onTap: (){
                Provider.of<HomeProvider>(context,listen: false).plusQuistionIndex(context);
              },
              colorBottom: AppColors.mainColor,
              colorBorder: AppColors.mainColor,
              colorTitle: AppColors.white,
              title: Provider.of<HomeProvider>(context).quistionIndex == Provider.of<HomeProvider>(context).qustionList.length - 1 ? AppTexts.send:AppTexts.next
          ),
        ),
        SizedBox(height: 40,),
        Center(
          child: Text(
            "(${Provider.of<HomeProvider>(context).count}/${Provider.of<HomeProvider>(context).qustionList.length})",
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
