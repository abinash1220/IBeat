import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/device_screen_controller.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/settings_screen/widget/device_container.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

var bluetoothController = Get.find<DeviceScreenController>();

class _DeviceScreenState extends State<DeviceScreen> {
  @override
  void initState() {
    super.initState();
    bluetoothController.devices.isNotEmpty
        ? null
        : bluetoothController.listenForBluetoothAdapterChange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: AppColors.navy),
            title: const Image(
              image: AssetImage("assets/images/logo.png"),
              height: 40,
            ),
            centerTitle: true,
          ),
        ),
      ),
      drawer: const Drawer(
        backgroundColor: AppColors.white,
        child: DrawerScreen(),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.white,
              Color.fromARGB(255, 245, 245, 245),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder(builder: (DeviceScreenController controller) {
                return controller.devices.isEmpty
                    ? const Text(
                        "Searching for device...",
                      )
                    : Text("Available devices",
                        style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textBlack));
              }),
              Gap(height: 20),
              Expanded(
                child: GetBuilder(builder: (DeviceScreenController controller) {
                  return ListView.builder(
                      itemCount: controller.devices.length,
                      itemBuilder: (context, index) {
                        return controller.devices.isEmpty
                            ? const Center(child: Text("No device"))
                            : GestureDetector(
                                onTap: () =>
                                    controller.connectToDevice(index: index),
                                child: DevicveContainer(
                                    device: controller.devices[index],
                                    key: ValueKey("device$index")),
                              );
                      });
                }),
              ),
              // const DevicveContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
