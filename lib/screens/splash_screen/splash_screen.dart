import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/screens/login_screen/login_screen.dart';

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
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: ((context) => const LoginScreen())),
            (route) => false);
       timer.cancel();     
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
              Center(
              child: FadeIn(
                duration:const Duration(seconds: 2),
                delay:const Duration(seconds: 1),
                child:const Image(
                  image: AssetImage("assets/images/logo.png"),height: 40,),
              )),
            Text("V 1.1",
                 style: primaryFont.copyWith(
                     fontSize: 12,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textGrey
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}