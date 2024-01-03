import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:i_beat/controllers/device_screen_controller.dart';
import 'package:i_beat/controllers/ecg_screen_controller.dart';
import 'package:i_beat/controllers/home_controller.dart';
import 'package:i_beat/controllers/settings_controller.dart';
import 'package:i_beat/screens/login_screen/login_screen.dart';

void main() {
  Get.put(SettingsController());
  Get.put(HomeController());
  Get.put(DeviceScreenController());
  Get.put(EcgScreenController());
  FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'I Beat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const LoginScreen(),
    );
  }
}
