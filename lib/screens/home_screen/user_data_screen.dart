import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_container.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Patient Detail",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
              ),
              Gap(height: 15,),
              DiaryEventContainer(),
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
                
          ],
        ),
      ),


    );
  }
}