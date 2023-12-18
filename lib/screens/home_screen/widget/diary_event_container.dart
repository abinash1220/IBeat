import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';

class DiaryEventContainer extends StatefulWidget {
  const DiaryEventContainer({super.key});

  @override
  State<DiaryEventContainer> createState() => _DiaryEventContainerState();
}

class _DiaryEventContainerState extends State<DiaryEventContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Select from the list (or) add reasons",
          style: primaryFont.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.textBlack
           ),
        ),
        Gap(height: 15,),
        Container(
          height: 260,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:const Center(
                        child: Image(image: AssetImage("assets/icons/chest.png"),
                        height: 32,
                        width: 32,),
                      ),
                    ),
                    Gap(width: 15,),
                    Text("Chest Discomfort",
                      style: primaryFont.copyWith(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: AppColors.textBlack
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:const Center(
                        child: Image(image: AssetImage("assets/icons/cold.png"),
                        height: 32,
                        width: 32,),
                      ),
                    ),
                    Gap(width: 15,),
                    Text("Cold Sweating",
                      style: primaryFont.copyWith(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: AppColors.textBlack
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:const Center(
                        child: Image(image: AssetImage("assets/icons/sleep.png"),
                        height: 32,
                        width: 32,),
                      ),
                    ),
                    Gap(width: 15,),
                    Text("Poor sleep (or) apnea",
                      style: primaryFont.copyWith(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: AppColors.textBlack
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:const Center(
                        child: Image(image: AssetImage("assets/icons/pain.png"),
                        height: 32,
                        width: 32,),
                      ),
                    ),
                    Gap(width: 15,),
                    Text("Indigestion like pain",
                      style: primaryFont.copyWith(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                       color: AppColors.textBlack
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Gap(height: 30,),
                Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGrey),
                          borderRadius: BorderRadius.circular(5)
                          ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: TextField(
                          //controller: usernamecontroller,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Other Reasons",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              Gap(height: 15,),
              NextButton(text: "Submit"),
      ],
    );
  }
}