import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/otp_screen/register_otp_screen.dart';

class PatientDetailScreen extends StatefulWidget {
  const PatientDetailScreen({super.key});

  @override
  State<PatientDetailScreen> createState() => _PatientDetailScreenState();
}

class _PatientDetailScreenState extends State<PatientDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
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
                  Text("Enter Patient Detail  ",
                  style: primaryFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBlack
                  ),
                  ),
                  Container(
                    height: size.height * 0.57,
                    child: ListView(
                      children: [
                    Gap(height: 20,),
                    Text("Name",
                    style: primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlack
                    ),),
                    Gap(height: 10,),
                     Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Enter Patient Name",
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
                                Gap(height: 20,),
                                Text("Gender",
                    style: primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlack
                    ),),
                    Gap(height: 10,),
                     Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Select Gender",
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
                                Gap(height: 20,),
                                Text("Date of birth",
                    style: primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlack
                    ),),
                 Gap(height: 10,),
                 Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "DD/MM/YY",
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
                Gap(height: 20,),
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
                  textInputAction: TextInputAction.next,
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
                 Gap(height: 20,),
                  Text("Phone number",
                    style: primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlack
                    ),),
                    Gap(height: 10,),
                     Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Enter Your Number",
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
                                   ],
                                ),
                  ),
              Gap(height: 40,),
              InkWell(
                onTap: (){
                  Get.to(const RegisterOtpScreen());
                },
                child: NextButton(text: "Continue")),
            ],
          ),
        ),
      ),
    );
  }
}