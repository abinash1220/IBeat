import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hex/hex.dart';
import 'package:i_beat/constants/ble_commands.dart';
import 'package:i_beat/controllers/device_screen_controller.dart';
import 'package:i_beat/helper/convert_analog_to_hex.dart';

class EcgScreenController extends GetxController {
  RxInt batteryPercentage = 0.obs;
  var bluetoothScreenController = Get.find<DeviceScreenController>();
  Timer? timerForBatteryStatus;

  int bpm = 0;
  int maxHeartRate = 0;
  int minHeartRate = 0;

  // Graph plot variables
  ValueNotifier<double> value = ValueNotifier<double>(0.0);
  ValueNotifier<double> i1 = ValueNotifier<double>(0.0);
  Queue<List<int>> ecgDataQueue = Queue<List<int>>();
  List<int> heartRate = [];

  void updateBatteryStatus() {
    timerForBatteryStatus?.cancel();
    timerForBatteryStatus = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (bluetoothScreenController.isDeviceConnected.value) {
        bluetoothScreenController.characteristics[0].write(BleCommands.batteryStatusCommand);
        String hexString = HEX.encode(bluetoothScreenController.characteristics[1].lastValue);
        log(hexString);
      }
    });
  }

  Future<void> startEcgCommand() async {
    log(bluetoothScreenController.characteristics[0].toString());
    bluetoothScreenController.characteristics[0].write(BleCommands.setOptionCommand,allowLongWrite: true);
    await Future.delayed(const Duration(seconds: 2));
    bluetoothScreenController.characteristics[0].write(BleCommands.measurementBeforeCommand, allowLongWrite: true);

    Timer.periodic(const Duration(milliseconds: 500), (timer) async {
      bluetoothScreenController.characteristics[0].write(BleCommands.startEcgMeasurementCommand, allowLongWrite: true);
      String hexString = HEX.encode(bluetoothScreenController.characteristics[1].lastValue);
      var data = ConvertedHexToAnalog.dataRq(hexData: hexString);
      List<int> selectedElements = data.skip(4).where((element) => (data.indexOf(element) - 4) % 5 == 0).toList();
      if (selectedElements.isNotEmpty && !selectedElements.contains(30000) && !selectedElements.contains(-30000)) {
        ecgDataQueue.addLast(selectedElements);
      }
      log("ecg Data $ecgDataQueue");
    });
    await Future.delayed(const Duration(seconds: 2));
    separateFunction2();
  }

  Future<void> separateFunction2() async {
    log("function called");

    while (ecgDataQueue.isNotEmpty) {
      for (int i = 0; i < ecgDataQueue.length; i++) {
        for (int j = 0; j < ecgDataQueue.elementAt(i).length; j++) {
          await Future.delayed(const Duration(milliseconds: 50));
          log("ecg data2");
          i1.value == 250 ? i1.value = 0 : i1.value++;
          value.value = ecgDataQueue.elementAt(i).elementAt(j).toDouble();
          log("For $i1 is $value");
        }
        log("print $i");
        // ecgDataQueue.removeFirst();
        log("print removed $i");
      }
    }
  }
}
