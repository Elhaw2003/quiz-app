import 'package:flutter/material.dart';
import 'package:quiz_app/featuers/splash/presentation/view/splash_screen.dart';

main(){
  runApp(QuizApp());
}
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
