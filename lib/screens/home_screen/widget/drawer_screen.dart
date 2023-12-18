import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/settings_controller.dart';
import 'package:i_beat/screens/bottom_nav_bar/home_bottom_bar_screen.dart';
import 'package:i_beat/screens/bottom_nav_bar/settings_bottom_bar_screen.dart';
import 'package:i_beat/screens/settings_screen/archive_screen.dart';
import 'package:i_beat/screens/settings_screen/device_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  final settingsController = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Gap(height: 30,),
          const Image(image: AssetImage("assets/images/logo.png"),height: 40,),
          Gap(height: 20,),
          const Divider(thickness: 1,),
          InkWell(
            onTap: (){
               setState(() {
                 settingsController.drawerIndex(0);
               });
               Get.off(HomeBottomBar());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:settingsController.drawerIndex.value == 0 ? AppColors.lightBlue : AppColors.white,
                  borderRadius:const BorderRadius.only(
                    topRight: Radius.circular(25),
                   bottomRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/home.png"),
                      height: 24,),
                      Gap(width: 20,),
                      Text("Home",
                            style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack
                         ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Gap(height: 15,),
          InkWell(
             onTap: (){
               setState(() {
                 settingsController.drawerIndex(1);
                 Get.to(const ArchiveScreen());
               });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: settingsController.drawerIndex.value == 1 ? AppColors.lightBlue : AppColors.white,
                  borderRadius:const BorderRadius.only(
                    topRight: Radius.circular(25),
                   bottomRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/archive.png"),
                      height: 24,),
                      Gap(width: 20,),
                      Text("Archive",
                            style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack
                         ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Gap(height: 15,),
          InkWell(
             onTap: (){
               setState(() {
                 settingsController.drawerIndex(2);
               });
               Get.to(SettingBottomBar());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:settingsController.drawerIndex.value == 2 ? AppColors.lightBlue : AppColors.white,
                  borderRadius:const BorderRadius.only(
                    topRight: Radius.circular(25),
                   bottomRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/settings.png"),
                      height: 24,),
                      Gap(width: 20,),
                      Text("Setting",
                            style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack
                         ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}