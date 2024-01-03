import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/settings_screen/widget/device_container.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
        body: Container(
          decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          AppColors.white,
          Color.fromARGB(255, 245, 245, 245),
        ])
      ),
          child: Padding(
            padding:const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Available devices",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 20,),
                const DevicveContainer(),
              ],
            ),
          ),
        ),
    );
  }
}