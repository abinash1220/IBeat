import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class DiaryEventListScreen extends StatefulWidget {
  const DiaryEventListScreen({super.key});

  @override
  State<DiaryEventListScreen> createState() => _DiaryEventListScreenState();
}

class _DiaryEventListScreenState extends State<DiaryEventListScreen> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeeklyDatePicker(
            selectedDay: _selectedDay,
            changeDay: (value) => setState(() {
              _selectedDay = value;
            }),
            enableWeeknumberText: false,
            weeknumberColor: const Color(0xFF57AF87),
            weeknumberTextColor: AppColors.textBlack,
            backgroundColor: AppColors.white,
            weekdayTextColor: AppColors.textBlack,
            digitsColor: AppColors.textBlack,
            selectedDigitBackgroundColor: AppColors.blue,
            weekdays: const ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
            daysInWeek: 7,
          ),
          Gap(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "11:27 AM",
                style: primaryFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textGrey,
                ),
              ),
              Container(
                //height: 75,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blue),
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 75,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                        Gap(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.heart_broken_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Chest discomfort",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                            Gap(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_2_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Undefined",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "10:10 AM -\n10:12 AM",
                style: primaryFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textGrey,
                ),
              ),
              Container(
                //height: 75,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blue),
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 110,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                        Gap(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.heart_broken_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Arm, neck, throat or jaw \ndiscomfort",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                            Gap(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.heart_broken_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Chest discomfort",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                            Gap(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_2_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Undefined",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "11:27 AM",
                style: primaryFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textGrey,
                ),
              ),
              Container(
                //height: 75,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blue),
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 75,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                        Gap(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.heart_broken_rounded,
                                  size: 14,
                                ),
                                Gap(width: 5),
                                Text(
                                  "Chest discomfort",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                            Gap(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_2_rounded,
                                  size: 14,
                                ),
                                Gap(
                                  width: 5,
                                ),
                                Text(
                                  "Undefined",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(
            height: 0,
          ),
          //NextButton(text: "Add new diary"),
        ],
      ),
    );
  }
}
