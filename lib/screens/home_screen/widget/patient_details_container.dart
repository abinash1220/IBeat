import 'package:flutter/material.dart';
import 'package:i_beat/constants/app_fonts.dart';

class PatientDetailsContainer extends StatefulWidget {
  const PatientDetailsContainer({super.key});

  @override
  State<PatientDetailsContainer> createState() => _PatientDetailsContainerState();
}

class _PatientDetailsContainerState extends State<PatientDetailsContainer> {
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
  height:  140*fem,
  decoration:  BoxDecoration (
    border:  Border.all(color: Color(0xff336cff)),
    color:  Color(0xffffffff),
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
  height:  140*fem,
  decoration:  BoxDecoration (
    color:  Color(0xff336cff),
    borderRadius:  BorderRadius.only (
      topLeft:  Radius.circular(10*fem),
      bottomLeft:  Radius.circular(10*fem),
    ),
  ),
),
Container(
  // autogroupz6u13ET (9AZqqEZr779bWz9saxz6u1)
  margin:  EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 15*fem),
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
  'Name',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
),
Container(
  // agePhd (1320:12411)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
  child:  
Text(
  'Age',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
),
Text(
  // genderWnF (1320:12412)
  'Gender',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
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
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
  child:  
Text(
  'Micheal Kores',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
),
Container(
  // Jy1 (1320:12406)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
  child:  
Text(
  '56',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
),
Text(
  // maleRXq (1320:12407)
  'Male',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
  ],
),
),
Container(
  // line9B1D (1320:12413)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.5*fem),
  width:  302*fem,
  height:  0.5*fem,
  decoration:  BoxDecoration (
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
  'Patient ID',
  style:  primaryFont.copyWith(
    fontSize:  12*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
),
Text(
  // studytypeMpo (1320:12410)
  'Study Type',
  style:  primaryFont.copyWith(
    fontSize:  10*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2999999523*ffem/fem,
    color:  Color(0xff6b7588),
  ),
),
  ],
),
),
Container(
  // autogroup8y5dJk3 (9AZrNifPNZhdo3UCYe8y5d)
  margin:  EdgeInsets.fromLTRB(4*fem, 0*fem, 18*fem, 0*fem),
  width:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // edkhihkdRZm (1320:12404)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 0*fem),
  child:  
Text(
  'EDKHIHKD',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
),
),
Text(
  // extholterYeP (1320:12405)
  'Ext.Holter',
  style:  primaryFont.copyWith(
    fontSize:  14*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2999999183*ffem/fem,
    color:  Color(0xff3a3a3c),
  ),
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