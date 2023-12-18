import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> items = ['1','2','3','4','5','6','7','8','9','10','1','2','3','4','5','6','7','8'];
  List<String> selectedItems = [];

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
        body: Padding(
          padding:const EdgeInsets.all(8.0),
          child: RawScrollbar(
                    thumbColor: Colors.redAccent,
                    radius: const Radius.circular(20),
                    thickness: 5,
            child: Container(
              height: 200,
              child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      String item = items[index];
                      return ListTile(
              title: Text(item),
              onTap: () {
                setState(() {
                  if (selectedItems.contains(item)) {
                    selectedItems.remove(item);
                  } else {
                    selectedItems.add(item);
                  }
                });
              },
              tileColor: selectedItems.contains(item) ? Colors.blue : null,
                      );
                    },
                  ),
            ),
          ),
        ),
    );
  }
}