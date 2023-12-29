import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/login_screen/login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  bool passToggle = true;
  bool cpassToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text("Reset Password",
                      style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack
                      ),
                      ),
                      Gap(height: 20,),
                      Text("New Password",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlack
                  ),),
                 Gap(height: 10,),
                Container(
                height: 50,
                child: TextFormField(
                  obscureText: passToggle,
                   keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Password",
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
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child:Icon(passToggle ? Icons.visibility : Icons.visibility_off))
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
                height: 50,
                child: TextFormField(
                  obscureText: cpassToggle,
                   keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Password",
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
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          cpassToggle = !cpassToggle;
                        });
                      },
                      child:Icon(cpassToggle ? Icons.visibility : Icons.visibility_off))
                  ),
                ),
              ),
                     Gap(height: 40,),
                    InkWell(
                       onTap: (){
                          Get.offAll(const LoginScreen());
                        },
                      child: NextButton(text: "Reset")), 
            ],
          ),
        ),
      ),
    );
  }
}