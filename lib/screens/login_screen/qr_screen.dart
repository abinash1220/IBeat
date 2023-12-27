import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/login_screen/qr_manual_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //Image(image: AssetImage("assets/icons/remove.png",),height: 24,color: AppColors.white,),
            Expanded(flex: 8, child: _buildQrView(context)),
            Gap(height: 10,),
            Text("Scan QR Code ",
                      style: primaryFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlack
                      ),
              ),
              Gap(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () async{
                     await controller?.toggleFlash();
                     setState(() {});
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow:const [
                        BoxShadow(
                          color: AppColors.textGrey,
                          blurRadius: 2.5,
                        )
                      ]
                    ),
                    child:const Center(
                      child: Image(image: 
                      AssetImage("assets/icons/flash.png"),
                      height: 24,)),
                  ),
                ),
                Gap(width: 30,),
                 InkWell(
                   onTap: (){
                    Get.to(const QrManualScreen());
                  },
                   child: Container(
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Center(
                      child: Text("Enter manually",
                                         style: primaryFont.copyWith(
                                           fontSize: 16,
                                           fontWeight: FontWeight.w500,
                                           color: AppColors.white
                                         ),
                                       ),
                      ),
                                           ),
                 ),
                 Gap(width: 30,),
                 InkWell(
                  onTap: (){
                        
                  },
                   child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow:const [
                        BoxShadow(
                          color: AppColors.textGrey,
                          blurRadius: 2.5,
                        )
                      ]
                    ),
                    child:const Center(
                      child: Image(image: 
                      AssetImage("assets/icons/img.png"),
                      height: 20,)),
                                           ),
                 ),
              ],
            ),
            Gap(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}