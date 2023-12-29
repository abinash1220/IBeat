import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_container.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/home_screen/widget/patient_details_container.dart';
import 'package:i_beat/screens/home_screen/widget/physician_details_container.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0,
            iconTheme:const IconThemeData(color: AppColors.navy),
            title:const Image(image: AssetImage("assets/images/logo.png"),height: 40,),
            centerTitle: true,
          ),
        ),
      ),
      drawer:const Drawer(
        backgroundColor: AppColors.white,
        child: DrawerScreen(),
      ),
      body: Container(
        decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          AppColors.white,
          Color.fromARGB(255, 245, 245, 245),
        ])
      ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Patient Detail",
                      style: primaryFont.copyWith(
                       fontSize: 20,
                       fontWeight: FontWeight.w600,
                       color: AppColors.textBlack
                     ),
                ),
                Gap(height: 10,),
               // DiaryEventContainer(),
        
               const PatientDetailsContainer(),
               Text("Physician Detail",
                      style: primaryFont.copyWith(
                       fontSize: 20,
                       fontWeight: FontWeight.w600,
                       color: AppColors.textBlack
                     ),
                ),
                Gap(height: 10,),
                const PhysicianDetailsContainer(),
              //   Container(
              //     height: 140,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         border: Border.all(color: AppColors.blue),
              //         color: AppColors.white,
              //         borderRadius: BorderRadius.circular(10)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
              //             height: 140,
              //             width: 8,
              //             decoration:const BoxDecoration(
              //               color: AppColors.blue,
              //               borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
              //           ),
              //        ),
              //        Padding(
              //          padding: const EdgeInsets.all(8.0),
              //          child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                   Text("Name",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 12,
              //                      fontWeight: FontWeight.w400,
              //                      color: AppColors.textGrey
              //                     ),
              //                    ),
              //                    Text("Micheal Kores",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 14,
              //                      fontWeight: FontWeight.w600,
              //                      color: AppColors.textBlack
              //                     ),
              //                    ), 
              //                   ],
              //                 ),
              //                 Gap(width: 30,),
              //                 Row(
              //               children: [
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                   Text("Age",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 12,
              //                      fontWeight: FontWeight.w400,
              //                      color: AppColors.textGrey
              //                     ),
              //                    ),
              //                    Text("23",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 14,
              //                      fontWeight: FontWeight.w600,
              //                      color: AppColors.textBlack
              //                     ),
              //                    ),
              //                   ],
              //                 ),
              //                 Gap(width: 15,),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                   Text("Gender",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 12,
              //                      fontWeight: FontWeight.w400,
              //                      color: AppColors.textGrey
              //                     ),
              //                    ),
              //                    Text("Male",
              //                      style: primaryFont.copyWith(
              //                      fontSize: 14,
              //                      fontWeight: FontWeight.w600,
              //                      color: AppColors.textBlack
              //                     ),
              //                    ),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //               ],
              //             ),
                          
              //           ],
              //          ),
              //        ),
              //     ],
              //   ),
              // ),
              //instruction
              Gap(height: 0,),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    //height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            blurRadius: 0.5,
                            color: AppColors.textGrey
                          ),
                        ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 10,
                              decoration:const BoxDecoration(
                                color: AppColors.lBlue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  bottomLeft: Radius.circular(2)
                                ),
                              ),
                            ),
                            Gap(width: 10,),
                             Text("Instruction",
                                     style: primaryFont.copyWith(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w600,
                                     color: AppColors.textBlack
                                    ),
                                   ),
                          ],
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20,top: 10),
                           child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                                       style: primaryFont.copyWith(
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400,
                                       color: AppColors.textBlack
                                      ),
                                     ),
                         ),
                      ],
                    ),
                  ),
                ),
              ),  
            ],
          ),
        ),
      ),


    );
  }
}