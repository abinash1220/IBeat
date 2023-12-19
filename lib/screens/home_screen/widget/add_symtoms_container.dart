import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';

class AddSymtomsContainer extends StatefulWidget {
  const AddSymtomsContainer({super.key});

  @override
  State<AddSymtomsContainer> createState() => _AddSymtomsContainerState();
}

class _AddSymtomsContainerState extends State<AddSymtomsContainer> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FadeInLeft(
                    child: Row(
                    children: [
                      Text("Dizziness",
                      textAlign: TextAlign.end,
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                      Gap(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                    ],
                                    ),
                  ),
                 FadeInLeft(
                   child: Row(
                    children: [
                      Text("Shortness\nof Breath",
                      textAlign: TextAlign.end,
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                      Gap(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                    ],
                                   ),
                 ),
                 FadeInLeft(
                   child: Row(
                    children: [
                      Text("Body Pain",
                      textAlign: TextAlign.end,
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                      Gap(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                    ],
                                   ),
                 ),
                 FadeInLeft(
                   child: Row(
                    children: [
                      Text("Chest\nDiscomfort",
                      textAlign: TextAlign.end,
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                      Gap(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                    ],
                                   ),
                 ),
                 FadeInLeft(
                   child: Row(
                    children: [
                      Text("Profuse\nSweating",
                      textAlign: TextAlign.end,
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                      Gap(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                    ],
                                   ),
                 ),
                ],
              ),
              FadeInUp(child: const Image(image: AssetImage("assets/images/man.png"),height: 240,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                       FadeInRight(
                         child: Row(
                                           children: [
                                             Container(
                                               height: 30,
                                               width: 30,
                                               decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                                               ),
                                               child:const Center(
                          child: Image(image: AssetImage("assets/icons/chest.png"),
                          height: 24,
                          width: 24,),
                                               ),
                                             ),
                                             Gap(width: 5,),
                                             Text("Fatigue",
                                               style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                                               ),
                                             ),
                                           ],
                                         ),
                       ),
                FadeInRight(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/cold.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                      Gap(width: 5,),
                      Text("Insomia",
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                    ],
                  ),
                ),
                FadeInRight(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/sleep.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                      Gap(width: 5,),
                      Text("Palpitation",
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                    ],
                  ),
                ),
                FadeInRight(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/pain.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                      Gap(width: 5,),
                      Text("Nausea",
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                    ],
                  ),
                ),
                FadeInRight(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/pain.png"),
                          height: 24,
                          width: 24,),
                        ),
                      ),
                      Gap(width: 5,),
                      Text("Indigestion",
                        style: primaryFont.copyWith(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: AppColors.textBlack
                        ),
                      ),
                    ],
                  ),
                ),
                ],
              )
            ],
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