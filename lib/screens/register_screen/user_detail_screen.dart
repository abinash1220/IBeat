import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/register_screen/patient_detail_screen.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: const Image(image: AssetImage("assets/icons/back.png"),
                      height: 20,width: 10,),
                  ),
                    Gap(height: 20,),
                  const Center(
                    child: Image(image: AssetImage("assets/images/logo.png"),
                    height: 50,)
                  ),
                  Gap(height: 30,),
                  Text("Enter User Detail",
                  style: primaryFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBlack
                  ),
                  ),
                  Gap(height: 20,),
                  Text("Username",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
                  Gap(height: 10,),
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
                              hintText: "Machile Jachson",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              Gap(height: 20,),
              Text("Password",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
                 Gap(height: 10,),
                 Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGrey),
                          borderRadius: BorderRadius.circular(5)
                          ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          //controller: usernamecontroller,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                               suffixIcon:const Icon(Icons.remove_red_eye),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              Gap(height: 20,),
              Text("Confirm Password",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
                 Gap(height: 10,),
                 Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGrey),
                          borderRadius: BorderRadius.circular(5)
                          ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          //controller: usernamecontroller,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                               suffixIcon:const Icon(Icons.remove_red_eye),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              Gap(height: 40,),
              InkWell(
                onTap: (){
                  Get.to(const PatientDetailScreen());
                },
                child: NextButton(text: "Continue")),
            ],
          ),
        ),
      ),
    );
  }
}