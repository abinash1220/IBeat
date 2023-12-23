import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/screens/home_screen/widget/add_symtoms_container.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_container.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_list_screen.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';
import 'package:i_beat/screens/home_screen/widget/patient_dashboard_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    
    // Error: Invalid reference to 'this' expression
   tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0,
            iconTheme:const IconThemeData(color: AppColors.navy),
            title:const Image(image: AssetImage("assets/images/logo.png"),height: 40,),
            centerTitle: true,
          ),
        ),
      ),
      drawer:const Drawer(
        backgroundColor: Colors.white,
        child: DrawerScreen(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                 height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.wBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(25)
                        ),
                        controller: tabController,
                        isScrollable: true,
                        labelColor: AppColors.white,
                        unselectedLabelColor: AppColors.textBlack,
                        //labelPadding: EdgeInsets.symmetric(horizontal: 20),
                        tabs: [
                          Tab(
                            child: Text("Patient\nDashboard",
                                    textAlign: TextAlign.center,
                                           style: primaryFont.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.textBlack
                                      ),
                                  ),
                          ),
                           Tab(
                             child: Text("Add\nSymptoms",
                                      textAlign: TextAlign.center,
                                             style: primaryFont.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.textBlack
                                        ),
                                    ),
                           ),
                            Tab(
                              child: Text("Diary\nEvents",
                                      textAlign: TextAlign.center,
                                             style: primaryFont.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.textBlack
                                        ),
                                    ),
                            ),
                        ],
                    ),
              ),
              Gap(height: 30,),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children:const [
                    PatientDashboardContainer(),
                    AddSymtomsContainer(),
                    DiaryEventListScreen(),
                  ]
                  ),
                 ),
            ],
          ),
        )
    );
  }
}