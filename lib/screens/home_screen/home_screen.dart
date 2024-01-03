import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/ecg_screen_controller.dart';
import 'package:i_beat/screens/home_screen/widget/add_symtoms_container.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_container.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_list_screen.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_screen.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/home_screen/widget/patient_dashboard_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var ecgController = Get.find<EcgScreenController>();

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    log("called");
    // ecgController.updateBatteryStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.white,
              Color.fromARGB(255, 245, 245, 245),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
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
                              "Patient\nDashboard",
                              textAlign: TextAlign.center,
                              style: primaryFont.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Add\nSymptoms",
                              textAlign: TextAlign.center,
                              style: primaryFont.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Diary\nEvents",
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
            ),
            Gap(height: 30),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  PatientDashboardContainer(),
                  AddSymtomsContainer(),
                  DiaryEventScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
