import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Patient Detail",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
                ),
                
          ],
        ),
      ),


    );
  }
}