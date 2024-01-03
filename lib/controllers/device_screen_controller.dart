import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

class DeviceScreenController extends GetxController {
  RxList<BluetoothDevice> devices = <BluetoothDevice>[].obs;
  List<BluetoothService> services = [];
  List<BluetoothCharacteristic> characteristics = [];

  RxBool isDeviceConnected = false.obs;

  // subscription listeners
  var bluetoothAdapterSubscription;
  var deviceSubscription;

  // timer to reconnect device
  Timer? timer;

  void startScan() async {
    if (devices.isEmpty) {
      await FlutterBluePlus.startScan(
        timeout: const Duration(seconds: 4),
        oneByOne: true,
        androidUsesFineLocation: true,
      );
      FlutterBluePlus.scanResults.listen((List<ScanResult> results) async {
        for (ScanResult result in results) {
          log(result.toString());
          if (result.device.remoteId.str == 'EC:EC:4C:0E:63:DA' || result.device.remoteId.str == 'f2:d0:2f:c9:c3:a5' || result.device.remoteId.str == 'F2:D0:2F:C9:C3:A5') {
            if (!devices.contains(result.device)) {
              devices.add(result.device);
              log("update called $devices");
              update();
            }
          }
        }
      });
    }
  }

  Future<void> connectToDevice({required int index}) async {
    if (devices.length <= index) {
      return; // index is within bounds
    }
    try {
      await devices[index].connect(autoConnect: true, mtu: null);

      deviceSubscription = devices[index].connectionState.listen((event) async {
        if (event == BluetoothConnectionState.disconnected) {
          log("disconnect reason ${devices[index].disconnectReason}");
          isDeviceConnected.value = false;
          update();
          // timer = Timer.periodic(const Duration(seconds: 3), (timer) async {
          //   await devices[index].connect();
          //   log("trying to connect");
          // });
        } else if (event == BluetoothConnectionState.connected) {
          isDeviceConnected.value = true;
          update();
          if (isDeviceConnected.value && timer != null && timer!.isActive) {
            timer!.cancel();
            log("timer got cancelled in connected status");
          }
          timer = null;
          await initializeConnectedDevice(devices[index]);
        }
      });
    } catch (e) {
      log("Error connecting to device: $e");
    }
  }

  void reconnectToDevice(int index) {
    if (timer != null && timer!.isActive) {
      timer!.cancel();
      log("timer got cancelled before reconnection");
    }
  }

  Future<void> initializeConnectedDevice(BluetoothDevice device) async {
    try {
      services = await device.discoverServices();
      services.forEach((service) async {
        characteristics = service.characteristics;
      });
      await characteristics[1].setNotifyValue(true);
    } catch (e) {
      log("Error initializing connected device: $e");
    }
  }

  void listenForBluetoothAdapterChange() {
    bluetoothAdapterSubscription = FlutterBluePlus.adapterState
        .listen((BluetoothAdapterState state) async {
      print(state);
      if (state == BluetoothAdapterState.on) {
        // usually start scanning, connecting, etc
        log("start scan");
        startScan();
      } else if (state == BluetoothAdapterState.off) {
        // show an error to the user, etc
        if (Platform.isAndroid) {
          await FlutterBluePlus.turnOn();
        }
      }
    });
  }
}
