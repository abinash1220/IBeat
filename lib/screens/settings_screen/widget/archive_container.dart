import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';

class ArchiveContainer extends StatefulWidget {
  const ArchiveContainer({super.key});

  @override
  State<ArchiveContainer> createState() => _ArchiveContainerState();
}

class _ArchiveContainerState extends State<ArchiveContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border:const Border(
                    bottom: BorderSide(color: AppColors.blue,width: 1),
                    right: BorderSide(color: AppColors.blue,width: 1),
                    left: BorderSide(color: AppColors.blue,width: 1),
                    ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.5,
                      color: AppColors.textGrey
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65,
                      width: double.infinity,
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 26, 104, 183),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sinus Rhythm",
                                style: primaryFont.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),),
                                Text("Today at 1:46 PM",
                                style: primaryFont.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite,color: AppColors.red,),
                          const SizedBox(width: 10,),
                          Text("87 BPM Average",
                                  style: primaryFont.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                         ),),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Image(image: AssetImage("assets/images/ecg.png"),
                      width: double.infinity,fit: BoxFit.fitWidth,),
                    )
                  ],
                ),
              );
  }
}