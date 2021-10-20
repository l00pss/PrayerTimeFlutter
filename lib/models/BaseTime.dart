import 'package:flutter/material.dart';

class BaseTimes {

  String dayOfYear;
  String todayDate;
  String todayHijrahDate;
  String qiblaClock;
  String imsaq;
  String sabah;
  String gunes;
  String gunorta;
  String ikindi;
  String axsam;
  String yatsi;

  BaseTimes({
    required this.dayOfYear,
    required this.todayDate,
    required this.todayHijrahDate,
    required this.qiblaClock,
    required this.imsaq,
    required this.sabah,
    required this.gunes,
    required this.gunorta,
    required this.ikindi,
    required this.axsam,
    required this.yatsi
  });

  factory BaseTimes.fromJson(Map<String, dynamic> decoded) {
    return BaseTimes(
        dayOfYear: decoded['dayOfYear'],
        todayDate: decoded['todayDate'],
        todayHijrahDate: decoded['todayHijrahDate'],
        qiblaClock: decoded['qiblaClock'],
        imsaq: decoded['imsaq'],
        sabah: decoded['sabah'],
        gunes: decoded['gunes'],
        gunorta: decoded['gunorta'],
        ikindi: decoded['ikindi'],
        axsam: decoded['axsam'],
        yatsi: decoded['yatsi']
    );
  }
}