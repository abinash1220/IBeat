import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/settings_screen/archive_list_data_screen.dart';

class ArchiveScreen extends StatefulWidget {
  const ArchiveScreen({super.key});

  @override
  State<ArchiveScreen> createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
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
        body:  Padding(
          padding:const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Archive",
                  style: primaryFont.copyWith(
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                   color: AppColors.textBlack
                 ),
              ),
              Gap(height: 10,),
              Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  // border:const Border(
                  //   bottom: BorderSide(color: AppColors.red,width: 1),
                  //   right: BorderSide(color: AppColors.blue,width: 1),
                  //   left: BorderSide(color: AppColors.blue,width: 1),
                  //   ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:const [
                    BoxShadow(
                      blurRadius: 5.5,
                      color: Color.fromARGB(255, 233, 233, 235)
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(const ArchiveDataScreen());
                      },
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        decoration:const BoxDecoration(
                          color: AppColors.wBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sinus Rhythm",
                                  style: primaryFont.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                  ),),
                                  Text("Today at 1:46 PM",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                  ),),
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite,color: AppColors.red,),
                          const SizedBox(width: 10,),
                          Text("87 BPM Average",
                                  style: primaryFont.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                         ),),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Image(image: AssetImage("assets/images/ecg.png"),
                      width: double.infinity,fit: BoxFit.fitWidth,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}