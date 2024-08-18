import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/core/utilies/app_fonts.dart';
import 'package:quiz_app/featuers/home/presentation/controller/home_provider.dart';
import 'package:quiz_app/featuers/splash/presentation/view/splash_screen.dart';

main(){
  runApp(ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: QuizApp()
  ));
}
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.almarai
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
