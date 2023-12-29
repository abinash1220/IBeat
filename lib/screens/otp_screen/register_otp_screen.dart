import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/bottom_nav_bar/home_bottom_bar_screen.dart';
import 'package:i_beat/screens/home_screen/home_screen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class RegisterOtpScreen extends StatefulWidget {
  const RegisterOtpScreen({super.key});

  @override
  State<RegisterOtpScreen> createState() => _RegisterOtpScreenState();
}

class _RegisterOtpScreenState extends State<RegisterOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
              //      mainAxisAlignment: MainAxisAlignment.start,
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
                      Text("OTP Verification",
                      style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack
                      ),
                      ),
                      Gap(height: 20,),
                      Center(
                        child: Text("Please enter verification code",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack
                        ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("sent to ",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack
                        ),
                        ),
                        Text("+91 9600099000",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue
                        ),
                        ),
                        ],
                      ),
                      Gap(height: 30,),
                      OTPTextField(
                       length: 4,
                       width: double.infinity,
                       fieldWidth: 50,
                       style: const TextStyle(
                          fontSize: 17
                        ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {
                        //print("Completed: " + pin);
                        },
                       ), 
                      Gap(height: 30,),
                      Center(
                        child: Text("00:30",
                          style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blue
                          ),
                         ),
                      ),
                      Gap(height: 15,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn’t receive OTP? ",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack
                        ),
                        ),
                        Text("Resend",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue
                        ),
                        ),
                        ],
                      ),
                      Gap(height: 40,),
                      InkWell(
                onTap: (){
                  Get.to(HomeBottomBar());
                },
                child: NextButton(text: "Verify")),
            ],
          ),
        ),
      ),
    );
  }
}