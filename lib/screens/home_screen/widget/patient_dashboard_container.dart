import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PatientDashboardContainer extends StatefulWidget {
  const PatientDashboardContainer({super.key});

  @override
  State<PatientDashboardContainer> createState() => _PatientDashboardContainerState();
}

class _PatientDashboardContainerState extends State<PatientDashboardContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient:const LinearGradient(colors: [
                Color(0XFF123CFC),
                Color(0XFF6ADADB),
              ]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/images/plot.png"),width: 70,),
                Text("Your Heart\nIs Being Monitored",
                   textAlign: TextAlign.center,
                   style: primaryFont.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: AppColors.white,
                    ),
                ),
                const Image(image: AssetImage("assets/images/plot.png"),width: 70,),
              ],
            ),
          ),
          Gap(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(1.1, 2.2),
                      blurRadius: 5.30,
                      color: Color.fromARGB(255, 238, 241, 241)
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Image(image: AssetImage("assets/icons/ecg_heart.png"),width: 18,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("58",
                            style: primaryFont.copyWith(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: AppColors.textBlack,
                             ),
                          ),
                          Text("Min HR",
                            style: primaryFont.copyWith(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                             color: AppColors.textGrey,
                             ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("148",
                            style: primaryFont.copyWith(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: AppColors.textBlack,
                             ),
                          ),
                          Text("Max HR",
                            style: primaryFont.copyWith(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                             color: AppColors.textGrey,
                             ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(1.1, 2.2),
                      blurRadius: 5.30,
                      color: Color.fromARGB(255, 238, 241, 241)
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Image(image: AssetImage("assets/icons/ecg.png"),width: 18,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("89%",
                            style: primaryFont.copyWith(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: AppColors.textBlack,
                             ),
                          ),
                          Text("BPM",
                            style: primaryFont.copyWith(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                             color: AppColors.textGrey,
                             ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //
          Gap(height: 20,),
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.lBlue,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Duration",
                                style: primaryFont.copyWith(
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                                 color: AppColors.textGrey,
                                 ),
                              ),
                          ),
                          Gap(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text("Day 3 of 14",
                                    style: primaryFont.copyWith(
                                     fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                     color: AppColors.textBlack,
                                     ),
                                  ),
                                  Gap(width: 30,),
                                  Text("35%",
                                    style: primaryFont.copyWith(
                                     fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                     color: AppColors.textBlack,
                                     ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(height: 10,),
                           LinearPercentIndicator(
                            width: 150.0,
                            lineHeight: 8.0,
                            percent: 0.3,
                            progressColor: AppColors.green,
                            backgroundColor: AppColors.white,
                            barRadius:const Radius.circular(5),
                                                     ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Text("Sensor Battery",
                                style: primaryFont.copyWith(
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                                 color: AppColors.textGrey,
                                 ),
                              ),
                              Gap(height: 15,),
                              const Image(image: AssetImage("assets/icons/battery.png"),height: 20,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
                    child: Divider(color: AppColors.lightBlue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Start: Oct 26, Mon 08:00",
                                  style: primaryFont.copyWith(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w400,
                                   color: AppColors.textBlack,
                                   ),
                             ),
                             Gap(height: 5,),
                             Text("End: Oct 29, Mon 08:00",
                                  style: primaryFont.copyWith(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w400,
                                   color: AppColors.textBlack,
                                   ),
                                ),
                          ],
                        ),
                        Container(
                          height: 48,
                          width: 114,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child:  Text("Pause",
                                  style: primaryFont.copyWith(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                   color: AppColors.white,
                                   ),
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
         ],
    );
  }
}