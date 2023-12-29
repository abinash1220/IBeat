import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/otp_screen/forgot_otp_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
                //    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: const Image(image: AssetImage("assets/icons/back.png"),
                              height: 20,width: 10,),
                          ),
                        ],
                      ),
                        Gap(height: 20,),
                      const Center(
                        child: Image(image: AssetImage("assets/images/logo.png"),
                        height: 50,)
                      ),
                      Gap(height: 30,),
                      Text("Forgot Password",
                      style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack
                      ),
                      ),
                      Gap(height: 10,),
                      Text("Enter your email for the verification\nprocess we’ll send 4 digit code to your\nmail",
                      style: primaryFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textBlack
                      ),
                      ),
                      Gap(height: 40,),
                      Text("Email",
                    style: primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlack
                    ),),
                     Gap(height: 10,),
                     Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Enter Your Mail",
                    hintStyle: primaryFont.copyWith(
                        color: AppColors.textBlack,
                        fontWeight: FontWeight.w400,
                    ),
                    border:const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                      color: AppColors.textGrey,
                      ),
                    ),
                  ),
                ),
              ),
                     Gap(height: 40,),
                    InkWell(
                       onTap: (){
                          Get.to(const ForgotPasswordOtpScreen());
                        },
                      child: NextButton(text: "Continue")), 
            ],
          ),
        ),
      ),
    );
  }
}