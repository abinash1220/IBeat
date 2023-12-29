import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/screens/settings_screen/device_screen.dart';
import 'package:i_beat/screens/settings_screen/logout_screen.dart';
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
    const LogoutScreen(),
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
        backgroundColor:const Color.fromARGB(255, 245, 245, 245),
        color: AppColors.white,
        buttonBackgroundColor: AppColors.blue,
        items: icons,
        onTap: (index) => setState(() => _selectedItemPosition = index),
       ),
    );
  }
}