import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/settings_controller.dart';
import 'package:i_beat/screens/bottom_nav_bar/settings_bottom_bar_screen.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/login_screen/login_screen.dart';
import 'package:i_beat/screens/settings_screen/widget/privacy_container.dart';
import 'package:i_beat/screens/settings_screen/widget/terms_of_service_container.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {

  final settingsController = Get.find<SettingsController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    logout();
  }

  logout() async {
    await Future.delayed(Duration.zero,(){
      showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 135,
              decoration: BoxDecoration(
                color:AppColors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(height: 10,),
                  Text("Logout",
                   style: primaryFont.copyWith(
                   fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textBlack
                ),),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  child: Text("Are you sure you want to logout?",
                     style: primaryFont.copyWith(
                     fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey
                  ),),
                ),
                //Divider(color: Colors.grey[300],),
                Gap(height: 10,),
                Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        width: 90,
                        child: Center(
                          child: Text("Cancel",
                            style: primaryFont.copyWith(
                               fontSize: 17,
                               fontWeight: FontWeight.w400,
                                color: AppColors.red
                           ),),
                        ),
                      ),
                    ),
                    Container(
                      height: 47,
                      width: 1,
                      color: Colors.grey[300],
                    ),
                    InkWell(
                      onTap: (){
                        Get.offAll(const LoginScreen());
                      },
                      child: Container(
                        width: 90,
                        child: Text("Logout",
                          style: primaryFont.copyWith(
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                              color: AppColors.blue
                         ),),
                      ),
                    ),
                  ],
                ),
                ],
              ),
            ),
          );
        });
      });
   

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:const Color.fromRGBO(252, 249, 249, 1),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Privacy Policy",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 15,),
                Obx( () =>
                 Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColors.wBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        settingsController.tabindex.value == 0 ?
                        Expanded(
                          child: Container(
                            height: 43,
                            decoration: BoxDecoration(
                              color:settingsController.tabindex.value == 0 ? AppColors.blue : AppColors.wBlue,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text("Privacy\nPolicy",
                              textAlign: TextAlign.center,
                                     style: primaryFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white
                                     ),
                                 ),
                            ),
                          ),
                        ) : Expanded(
                            child: InkWell(
                              onTap: (){
                                 setState(() {
                                   settingsController.tabindex(0);
                                 settingsController.update();
                                 });
                              },
                               child: Container(
                                 child: Text("Privacy\nPolicy",
                                    textAlign: TextAlign.center,
                                           style: primaryFont.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.textBlack
                                   ),
                               ),
                            ),
                          ),
                        ),
                        settingsController.tabindex.value == 1 ?
                        Expanded(
                          child: Container(
                            height: 43,
                            decoration: BoxDecoration(
                              color:settingsController.tabindex.value == 1 ? AppColors.blue : AppColors.wBlue,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text("Terms of\nService",
                              textAlign: TextAlign.center,
                                     style: primaryFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white
                                     ),
                                 ),
                            ),
                          ),
                        ) : Expanded(
                            child: InkWell(
                              onTap: (){
                                 setState(() {
                                   settingsController.tabindex(1);
                                 settingsController.update();
                                 });
                              },
                               child: Container(
                                 child: Text("Terms of\nService",
                                    textAlign: TextAlign.center,
                                           style: primaryFont.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.textBlack
                                   ),
                               ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(height: 15,),
                Text("Last revision : 20th April 2023",
                    style: primaryFont.copyWith(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 15,),
                if(settingsController.tabindex.value == 0)
                PrivacyContainer(),
                if(settingsController.tabindex.value == 1)
                TermsOfServiceContainer()
              ],
            ),
          ),
        ),
    );
  }
}