import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/settings_screen/archive_screen.dart';
import 'package:i_beat/screens/settings_screen/device_screen.dart';
import 'package:i_beat/screens/settings_screen/privacy_policy_t&c_screen.dart';

class SettingBottomBar extends StatefulWidget {
  int index;
  SettingBottomBar({super.key,this.index = 0});

  @override
  State<SettingBottomBar> createState() => _SettingBottomBarState();
}

class _SettingBottomBarState extends State<SettingBottomBar> {
  
  int _selectedItemPosition = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  setData() {
    setState(() {
      _selectedItemPosition = widget.index;
    });
  }

  final screens = [
    const PrivacyPolicyTandCScreen(),
    const DeviceScreen(),
    const PrivacyPolicyTandCScreen(),
  ];

   

  @override
  Widget build(BuildContext context) {
    final icons = <Widget> [
      Image(image:const AssetImage("assets/icons/privacy.png"),height: 30,color:_selectedItemPosition == 0 ?AppColors.white : AppColors.textBlack,),
      Image(image:const AssetImage("assets/icons/heart.png"),height: 30,color:_selectedItemPosition == 1 ?AppColors.white : AppColors.textBlack,),
      Image(image:const AssetImage("assets/icons/logout.png"),height: 30,color:_selectedItemPosition == 2 ?AppColors.white : AppColors.textBlack,),
    ];
    return Scaffold(
      body: screens[_selectedItemPosition],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedItemPosition,
        backgroundColor: AppColors.white,
        color: AppColors.wBlue,
        buttonBackgroundColor: AppColors.blue,
        items: icons,
        onTap: (index) => setState(() => _selectedItemPosition == 2 ? logout() : _selectedItemPosition = index),
       ),
    );
  }

  logout(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 135,
              decoration: BoxDecoration(
                color:AppColors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(height: 10,),
                  Text("Logout",
                   style: primaryFont.copyWith(
                   fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textBlack
                ),),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  child: Text("Are you sure you want to logout?",
                     style: primaryFont.copyWith(
                     fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey
                  ),),
                ),
                Divider(color: Colors.grey[300],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 90,
                      child: Center(
                        child: Text("Cancel",
                          style: primaryFont.copyWith(
                             fontSize: 17,
                             fontWeight: FontWeight.w400,
                              color: AppColors.red
                         ),),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 1,
                      color: Colors.grey[300],
                    ),
                    Container(
                      width: 90,
                      child: Text("Logout",
                        style: primaryFont.copyWith(
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                            color: AppColors.blue
                       ),),
                    ),
                  ],
                ),
                ],
              ),
            ),
          );
        });
  }

}