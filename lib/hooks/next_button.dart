import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';

class NextButton extends StatelessWidget {
  String text;
  NextButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(text,
          style: primaryFont.copyWith(
            fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.white,)),
        ),
      );
  }
}