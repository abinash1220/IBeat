import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';

class ArchiveDataScreen extends StatefulWidget {
  const ArchiveDataScreen({super.key});

  @override
  State<ArchiveDataScreen> createState() => _ArchiveDataScreenState();
}

class _ArchiveDataScreenState extends State<ArchiveDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0,
            leading:InkWell(
              onTap: (){
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios)),
            iconTheme:const IconThemeData(color: AppColors.navy),
            title:const Image(image: AssetImage("assets/images/logo.png"),height: 40,),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sinus Rhythm",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                ),
             ),
             Gap(height: 5,),
             Text("03-Aug-2023 at 1:46 PM",
                    style: primaryFont.copyWith(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textBlack
                   ),
             ),
             Gap(height: 20,),
             const Image(image: AssetImage("assets/images/ecg.png"),
             height: 200,
             width: double.infinity,
             fit: BoxFit.fill,
             ),
             Gap(height: 20,),
             Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.lightBlue),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        children: [
                          const Icon(Icons.favorite,color: AppColors.red,),
                          const SizedBox(width: 10,),
                          Text("87 BPM Average",
                                  style: primaryFont.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack
                         ),),
                        ],
                      ),
                     const Divider(thickness: 1,color: AppColors.lightBlue,),
                     Text("Start Time",
                                  style: primaryFont.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textGrey
                      ),),
                      Text("03-Aug-2023 at 1:46:21 PM",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textBlack
                         ),),
                      Text("End Time",
                                  style: primaryFont.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textGrey
                         ),),
                         Text("03-Aug-2023 at 1:46:21 PM",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textBlack
                         ),),
                  ],
                ),
              ),
             ),
             Gap(height: 40,),
             NextButton(text: "Export PDF"),
          ],
        ),
      ),
    );
  }
}