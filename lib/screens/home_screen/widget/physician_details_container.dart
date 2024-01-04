import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_colors.dart';
import 'package:i_beat/constants/app_fonts.dart';
import 'package:i_beat/constants/cap.dart';

class PhysicianDetailsContainer extends StatefulWidget {
  const PhysicianDetailsContainer({super.key});

  @override
  State<PhysicianDetailsContainer> createState() => _PhysicianDetailsContainerState();
}

class _PhysicianDetailsContainerState extends State<PhysicianDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
  // group64h2B (1320:12400)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
  padding:  EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
  width:  double.infinity,
  height:  160*fem,
  decoration:  BoxDecoration (
    border:  Border.all(color: AppColors.lBlue),
    color:  AppColors.white,
    borderRadius:  BorderRadius.circular(10*fem),
    boxShadow:  [
      BoxShadow(
        color:  Color(0x0f000000),
        offset:  Offset(0*fem, 6*fem),
        blurRadius:  12*fem,
      ),
    ],
  ),
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // rectangle8Y2o (1320:12402)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
  width:  6*fem,
  height:  160*fem,
  decoration:  BoxDecoration (
    color:  AppColors.lBlue,
    borderRadius:  BorderRadius.only (
      topLeft:  Radius.circular(10*fem),
      bottomLeft:  Radius.circular(10*fem),
    ),
  ),
),
Container(
  // autogroupz6u13ET (9AZqqEZr779bWz9saxz6u1)
  margin:  EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 1*fem),
  width:  306*fem,
  height:  double.infinity,
  child:  
Column(
  crossAxisAlignment:  CrossAxisAlignment.start,
  children:  [
Container(
  // autogroupynbdx6X (9AZr3PtFY6yG9GAWNQYNbd)
  margin:  EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 4*fem),
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // nameV6T (1320:12408)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 180*fem, 0*fem),
  child:  
Text(
  'Physician',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
),
// Container(
//   // agePhd (1320:12411)
//   margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
//   child:  
// Text(
//   'Age',
//   style:  primaryFont.copyWith(
//     fontSize:  12*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.2999999523*ffem/fem,
//     color:  Color(0xff6b7588),
//   ),
// ),
// ),
// Text(
  // genderWnF (1320:12412)
//   'Gender',
//   style:  primaryFont.copyWith(
//     fontSize:  12*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.2999999523*ffem/fem,
//     color:  Color(0xff6b7588),
//   ),
// ),
  ],
),
),
Container(
  // autogroupahp14Hy (9AZrAZLywZsyAmTZmCahP1)
  margin:  EdgeInsets.fromLTRB(4*fem, 0*fem, 10*fem, 15*fem),
  width:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // michealkoresnUs (1320:12403)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 117*fem, 0*fem),
  child:  
Text(
  'Dr. Michael Jackson',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
),
// Container(
//   // Jy1 (1320:12406)
//   margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
//   child:  
// Text(
//   '56',
//   style:  primaryFont.copyWith(
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w600,
//     height:  1.2999999183*ffem/fem,
//     color:  Color(0xff3a3a3c),
//   ),
// ),
// ),
// Text(
//   // maleRXq (1320:12407)
//   'Male',
//   style:  primaryFont.copyWith(
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w600,
//     height:  1.2999999183*ffem/fem,
//     color:  Color(0xff3a3a3c),
//   ),
// ),
  ],
),
),
Container(
  // line9B1D (1320:12413)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.5*fem),
  width:  302*fem,
  height:  0.5*fem,
  decoration: const BoxDecoration (
    color:  Color(0xffc7c9d9),
  ),
),
Container(
  // autogroup4d1mW3V (9AZrHdyX4aAzbrooET4d1m)
  margin:  EdgeInsets.fromLTRB(4*fem, 0*fem, 19*fem, 4*fem),
  width:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // patientidqLf (1320:12409)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 165*fem, 0*fem),
  child:  
Text(
  'Care team',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color: const Color(0xff6b7588),
  ),
),
),
Text(
  // studytypeMpo (1320:12410)
  'Telephone',
  style:  primaryFont.copyWith(
    fontSize:  10*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color: const Color(0xff6b7588),
  ),
),
  ],
),
),
Container(
  // autogroup8y5dJk3 (9AZrNifPNZhdo3UCYe8y5d)
  margin:  EdgeInsets.fromLTRB(1*fem, 0*fem, 18*fem, 0*fem),
  width:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // edkhihkdRZm (1320:12404)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
  child:  
Text(
  'J.Ramakrishnan',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
),
Column(
  children: [
    Text(
      // extholterYeP (1320:12405)
      '989-988-9889',
      style:  primaryFont.copyWith(
        fontSize:  14*ffem,
        fontWeight:  FontWeight.w600,
        height:  1.2999999183*ffem/fem,
        color:  Color(0xff3a3a3c),
      ),
    ),
    Gap(height: 10,),
    Text(
      // extholterYeP (1320:12405)
      '789-987-5645',
      style:  primaryFont.copyWith(
        fontSize:  14*ffem,
        fontWeight:  FontWeight.w600,
        height:  1.2999999183*ffem/fem,
        color:  Color(0xff3a3a3c),
      ),
    ),
  ],
),
  ],
),
),
  ],
),
),
  ],
),
);
  }
}