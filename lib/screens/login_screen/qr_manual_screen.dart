import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';

class QrManualScreen extends StatefulWidget {
  const QrManualScreen({super.key});

  @override
  State<QrManualScreen> createState() => _QrManualScreenState();
}

class _QrManualScreenState extends State<QrManualScreen> {
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
                        Gap(height: 40,),
                      const Center(
                        child: Image(image: AssetImage("assets/images/logo.png"),
                        height: 50,)
                      ),
                      Gap(height: 30,),
                      Text("Enter Serial Number",
                      style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack
                      ),
                    ),
                    Gap(height: 20,),
                      Center(
                        child: Text("Find the serial number behind the QR code and enter it manually.",
                        textAlign: TextAlign.center,
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack
                        ),
                        ),
                      ),
                      Gap(height: 10,),
                      const Center(
                        child: Image(image: AssetImage("assets/icons/qr1.png"),
                        height: 133,)
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.blue)
                          ),
                          child: Center(
                            child: Text("ABCD1234",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack
                        ),
                          ),
                          ),
                        ),
                      ),
                      Gap(height: 20,),
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
                              border: InputBorder.none,
                              hintText: "Enter the number here",
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
                          // Get.to(const RegisterOtpScreen());
                            },
                          child: NextButton(text: "Continue")),

            ],
          ),
        ),
      ),
    );
  }
}