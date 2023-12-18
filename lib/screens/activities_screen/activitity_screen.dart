import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/controllers/home_controller.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/models/activity_model.dart';
import 'package:i_beat/screens/home_screen/widget/drawer_screen.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {

   final homeController = Get.find<HomeController>();

   int activities = 999;
  
  List<String> title = ["Running", "Excercise", "Steps", "Walking"];
  List<String> img = ["assets/icons/run.png", "assets/icons/exe.png", "assets/icons/step.png", "assets/icons/walk.png"];

  List<ActivityModel >  actvity = [ActivityModel(title: "o",image: "url")];
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: AppColors.white,
        child: DrawerScreen(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: 
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Activities",
                    style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(height: 5,),
                Text("Add activities by selecting the icons",
                    style: primaryFont.copyWith(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.textBlack
                   ),
                ),
                Gap(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                                  onTap: (){
                                    if(activities != homeController.activeIndex.value){
                                       homeController.activeIndex(999);
                                    }else{
                                       homeController.activeIndex(0);
                                    }
                                    
                                  },
                                  child: Container(
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(
                                      color:homeController.activeIndex.value == activities ? AppColors.blue : AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage("assets/icons/run.png"),
                                      height: 40,
                                      color: homeController.activeIndex.value == activities ? AppColors.white : AppColors.textBlack,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(height: 5,),
                                Text("Running",
                                textAlign: TextAlign.center,
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack
                                 ),
                                ),
                              ],
                    ),
                    Column(
                      children: [
                        InkWell(
                                  onTap: (){
                                    if(activities != homeController.activeIndex.value){
                                       homeController.activeIndex(999);
                                    }else{
                                       homeController.activeIndex(0);
                                    }
                                    
                                  },
                                  child: Container(
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(
                                      color:homeController.activeIndex.value == activities ? AppColors.blue : AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage("assets/icons/exe.png"),
                                      height: 40,
                                      color: homeController.activeIndex.value == activities ? AppColors.white : AppColors.textBlack,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(height: 5,),
                                Text("Excercise",
                                textAlign: TextAlign.center,
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack
                                 ),
                                ),
                              ],
                    ),
                    Column(
                      children: [
                        InkWell(
                                  onTap: (){
                                    if(activities != homeController.activeIndex.value){
                                       homeController.activeIndex(999);
                                    }else{
                                       homeController.activeIndex(0);
                                    }
                                    
                                  },
                                  child: Container(
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(
                                      color:homeController.activeIndex.value == activities ? AppColors.blue : AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage("assets/icons/step.png"),
                                      height: 40,
                                      color: homeController.activeIndex.value == activities ? AppColors.white : AppColors.textBlack,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(height: 5,),
                                Text("Steps",
                                textAlign: TextAlign.center,
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack
                                 ),
                                ),
                              ],
                    ),
                    Column(
                      children: [
                        InkWell(
                                  onTap: (){
                                    if(activities != homeController.activeIndex.value){
                                       homeController.activeIndex(999);
                                    }else{
                                       homeController.activeIndex(0);
                                    }
                                    
                                  },
                                  child: Container(
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(
                                      color:homeController.activeIndex.value == activities ? AppColors.blue : AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage("assets/icons/walk.png"),
                                      height: 40,
                                      color: homeController.activeIndex.value == activities ? AppColors.white : AppColors.textBlack,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(height: 5,),
                                Text("Walking",
                                textAlign: TextAlign.center,
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack
                                 ),
                                ),
                              ],
                    ),
                  ],
                ),
                Gap(height: 50,),
                Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGrey),
                          borderRadius: BorderRadius.circular(5)
                          ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: TextField(
                          //controller: usernamecontroller,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Other activities",
                              hintStyle: primaryFont.copyWith(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
              ),
              Gap(height: 15,),
              NextButton(text: "Submit")
              ],
            ),
          ),
    );
  }
}