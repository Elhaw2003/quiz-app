import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_colors.dart';
import 'package:quiz_app/featuers/home/presentation/view/home_screen.dart';
import 'package:quiz_app/featuers/splash/presentation/view/widgets/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
        (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
          return HomeScreen();
        }));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SplashBody(),
    );
  }
}
