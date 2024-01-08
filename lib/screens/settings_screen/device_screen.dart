import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/device_screen_controller.dart';
import 'package:i_beat/hooks/next_button.dart';
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
                    ? InkWell(
                      onTap: (){
                        bottomSheet();
                      },
                      child: const Text(
                          "Searching for device...",
                        ),
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

  bottomSheet(){
    showModalBottomSheet(
      shape:const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),topRight: Radius.circular(25)),
      ),
      context: context, 
      builder: (context) {
        return Container(
          height: 310,
          decoration:const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),topRight: Radius.circular(25)), 
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 15),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child:const Icon(Icons.cancel,size: 25,color: AppColors.textGrey,))
                    ],
                                   ),
                 ),
                const Image(image: AssetImage("assets/images/white.gif"),
                height: 200,width: double.infinity,fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: NextButton(text: "Connect"),
                ),
              ],
            ),
          ),
        );
      },
      );
  }

}
