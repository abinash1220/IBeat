import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';

class PrivacyContainer extends StatelessWidget {
  const PrivacyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.wBlue,width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text("Privacy Policy Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting.It has survived not only five centuries,Lorem Ipsum is  the  Lorem Ipsum is simply dummy textIt has survived not only five centuries,",
                    style: primaryFont.copyWith(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textBlack
                   ),
                ),
        ),
      ),
    );
  }
}