import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/controllers/home_controller.dart';
import 'package:i_beat/controllers/settings_controller.dart';
import 'package:i_beat/screens/login_screen/login_screen.dart';

void main() {
  Get.put(SettingsController());
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'I Beat',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

