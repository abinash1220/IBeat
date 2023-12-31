import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/screens/activities_screen/activitity_screen.dart';
import 'package:i_beat/screens/home_screen/home_screen.dart';
import 'package:i_beat/screens/home_screen/user_data_screen.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/settings_screen/device_screen.dart';

class HomeBottomBar extends StatefulWidget {
  int index;
  HomeBottomBar({super.key,this.index = 0});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  
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
    const UserDataScreen(),
    const HomeScreen(),
    const ActivityScreen(),
  ];

   

  @override
  Widget build(BuildContext context) {
    final icons = <Widget> [
      Image(image:const AssetImage("assets/icons/user.png"),height: 30,color:_selectedItemPosition == 0 ?AppColors.white : AppColors.textBlack,),
      Image(image:const AssetImage("assets/icons/heart.png"),height: 30,color:_selectedItemPosition == 1 ?AppColors.white : AppColors.textBlack,),
      Image(image:const AssetImage("assets/icons/man.png"),height: 30,color:_selectedItemPosition == 2 ?AppColors.white : AppColors.textBlack,),
    ];
    return Scaffold(
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
        backgroundColor: Colors.white,
        child: DrawerScreen(),
        ),
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