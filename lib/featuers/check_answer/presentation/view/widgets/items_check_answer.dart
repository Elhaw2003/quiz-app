import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/core/widgets/custom_driver.dart';
import 'package:quiz_app/featuers/home/presentation/controller/home_provider.dart';

class ItemsCheckAnswer extends StatelessWidget {
  const ItemsCheckAnswer({super.key, required this.index, required this.countIndex});
  final int index;
  final int countIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 32,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "(${countIndex}",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
        const SizedBox(height: 11,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            Provider.of<HomeProvider>(context).qustionList[index].title,
            style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 14,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
        const SizedBox(height: 14,),
        CustomDriver(color: AppColors.mainColor.withOpacity(0.5), indent: 52, endIndent: 52),
        const SizedBox(height: 26,),
        Wrap(
          children: [
            ...Provider.of<HomeProvider>(context).qustionList[index].answers.map(
                  (answers){
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width/2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52,vertical: 29),
                    child: Text(
                      textAlign: TextAlign.end,
                      answers,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,

                          color:
                          Provider.of<HomeProvider>(context).qustionList[index].correctAnswer == answers?
                          AppColors.green :
                          Provider.of<HomeProvider>(context).qustionList[index].correctAnswer != Provider.of<HomeProvider>(context).qustionList[index].selectedAnswer &&
                              Provider.of<HomeProvider>(context).qustionList[index].selectedAnswer == answers?
                          AppColors.red:
                          AppColors.grey

                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 51,),
        CustomDriver(color: AppColors.mainColor.withOpacity(0.2), indent: 0, endIndent: 0)
      ],
    );
  }
}
