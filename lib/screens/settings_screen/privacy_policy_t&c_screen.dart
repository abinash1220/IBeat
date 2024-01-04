import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/settings_controller.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/settings_screen/widget/privacy_container.dart';
import 'package:i_beat/screens/settings_screen/widget/terms_of_service_container.dart';

class PrivacyPolicyTandCScreen extends StatefulWidget {
  const PrivacyPolicyTandCScreen({super.key});

  @override
  State<PrivacyPolicyTandCScreen> createState() => _PrivacyPolicyTandCScreenState();
}

class _PrivacyPolicyTandCScreenState extends State<PrivacyPolicyTandCScreen> with TickerProviderStateMixin {

  final settingsController = Get.find<SettingsController>();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
    //log("called");
    // ecgController.updateBatteryStatus();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:const Color.fromRGBO(252, 249, 249, 1),
        body: Container(
          decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          AppColors.white,
          Color.fromARGB(255, 245, 245, 245),
        ])
      ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Privacy Policy",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 15,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.wBlue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TabBar(
                          indicator: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          controller: tabController,
                          labelColor: AppColors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          unselectedLabelColor: AppColors.textBlack,
                          labelStyle: primaryFont.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color:
                                AppColors.white, // Set label color for the selected tab
                          ),
                          tabs: [
                            Tab(
                              child: Text(
                                "Privacy\nPolicy",
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Terms of\nService",
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Obx( () =>
                //  Container(
                //     height: 50,
                //     width: size.width,
                //     decoration: BoxDecoration(
                //       color: AppColors.wBlue,
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     child: Row(
                //       children: [
                //         settingsController.tabindex.value == 0 ?
                //         Expanded(
                //           child: Container(
                //             height: 43,
                //             decoration: BoxDecoration(
                //               color:settingsController.tabindex.value == 0 ? AppColors.blue : AppColors.wBlue,
                //               borderRadius: BorderRadius.circular(30)
                //             ),
                //             child: Center(
                //               child: Text("Privacy\nPolicy",
                //               textAlign: TextAlign.center,
                //                      style: primaryFont.copyWith(
                //                         fontSize: 14,
                //                         fontWeight: FontWeight.w400,
                //                         color: AppColors.white
                //                      ),
                //                  ),
                //             ),
                //           ),
                //         ) : Expanded(
                //             child: InkWell(
                //               onTap: (){
                //                  setState(() {
                //                    settingsController.tabindex(0);
                //                  settingsController.update();
                //                  });
                //               },
                //                child: Container(
                //                  child: Text("Privacy\nPolicy",
                //                     textAlign: TextAlign.center,
                //                            style: primaryFont.copyWith(
                //                               fontSize: 14,
                //                               fontWeight: FontWeight.w400,
                //                               color: AppColors.textBlack
                //                    ),
                //                ),
                //             ),
                //           ),
                //         ),
                //         settingsController.tabindex.value == 1 ?
                //         Expanded(
                //           child: Container(
                //             height: 43,
                //             decoration: BoxDecoration(
                //               color:settingsController.tabindex.value == 1 ? AppColors.blue : AppColors.wBlue,
                //               borderRadius: BorderRadius.circular(30)
                //             ),
                //             child: Center(
                //               child: Text("Terms of\nService",
                //               textAlign: TextAlign.center,
                //                      style: primaryFont.copyWith(
                //                         fontSize: 14,
                //                         fontWeight: FontWeight.w400,
                //                         color: AppColors.white
                //                      ),
                //                  ),
                //             ),
                //           ),
                //         ) : Expanded(
                //             child: InkWell(
                //               onTap: (){
                //                  setState(() {
                //                    settingsController.tabindex(1);
                //                  settingsController.update();
                //                  });
                //               },
                //                child: Container(
                //                  child: Text("Terms of\nService",
                //                     textAlign: TextAlign.center,
                //                            style: primaryFont.copyWith(
                //                               fontSize: 14,
                //                               fontWeight: FontWeight.w400,
                //                               color: AppColors.textBlack
                //                    ),
                //                ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Gap(height: 15,),
                Text("Last revision : 20th April 2023",
                    style: primaryFont.copyWith(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 15,),
                Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    PrivacyContainer(),
                    TermsOfServiceContainer(),
                  ],
                 ),
                ),
                // if(settingsController.tabindex.value == 0)
                // PrivacyContainer(),
                // if(settingsController.tabindex.value == 1)
                // TermsOfServiceContainer()
              ],
            ),
          ),
        ),
    );
  }
}