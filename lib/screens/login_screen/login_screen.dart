import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/forgot_password/forgot_password_screen.dart';
import 'package:i_beat/screens/login_screen/qr_manual_screen.dart';
import 'package:i_beat/screens/register_screen/user_detail_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Image(image: AssetImage("assets/images/logo.png"),
                height: 50,)),
                const SizedBox(height: 20,),
              Center(
                child: Text("Welcome",
                style: primaryFont.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Scan QR Code",
                        style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white
                     ),),
                     InkWell(
                      onTap: (){
                        Get.to(const QrManualScreen());
                      },
                       child: Container(
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                          color: AppColors.whiteBlue,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:const Center(
                          child: Image(image: AssetImage("assets/icons/qr.png"),height: 40,
                        ),
                       ),
                                       ),
                     )],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Text("OR",
                style: primaryFont.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
              ),
              const SizedBox(height: 20,),
              Text("Patient ID",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
              const SizedBox(height: 10,),
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
              const SizedBox(height: 20,),
              Text("Password",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
                  const SizedBox(height: 10,),
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
                               suffixIcon: Icon(Icons.remove_red_eye),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(const ForgotPasswordScreen());
                    },
                    child: Text("Forgot password ?",
                    style: primaryFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue
                    ),),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              InkWell(
                onTap: (){
                  Get.to(const UserDetailScreen());
                },
                child: NextButton(text: "Login")),
            ],
          ),
        ),
      ),
    );
  }
}