import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/device_screen_controller.dart';

class DevicveContainer extends StatefulWidget {
  BluetoothDevice device;
  DevicveContainer({super.key, required this.device});

  @override
  State<DevicveContainer> createState() => _DevicveContainerState();
}

class _DevicveContainerState extends State<DevicveContainer> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.lBlue, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "iBEAT recorder",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack),
                      ),
                      Gap(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Model",
                            style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textGrey),
                          ),
                          Gap(
                            width: 30,
                          ),
                          Text(
                            "MS2000",
                            style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textGrey),
                          ),
                        ],
                      ),
                      Gap(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "IG 100029",
                            style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textGrey),
                          ),
                          Gap(
                            width: 30,
                          ),
                          Text(
                            "10000023",
                            style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GetBuilder(builder: (DeviceScreenController controller) {
                    return controller.isDeviceConnected.value == false ? Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/icons/bluetooth.png"),
                        height: 20,
                      )),
                    ) : Container(
                      height: 40,
                      width: 40,
                      child: const Center(
                          child: Image(
                        image: AssetImage("assets/icons/bluetooth_connected.png"),
                        height: 40,
                      )),
                    );
                  }),
                ],
              ),
              Gap(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Connection Status",
                    style: primaryFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack),
                  ),
                  GetBuilder(
                    builder: (DeviceScreenController controller) {
                      return controller.isDeviceConnected.value == false ? Text(
                        "Not Connect",
                        style: primaryFont.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.red),
                      ) : Text("Connected",style: primaryFont.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.green));
                    }
                  ),
                ],
              ),
              Gap(
                height: 10,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: AppColors.textGrey,
              ),
              //const Divider(thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transmission Status",
                    style: primaryFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textBlack),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
