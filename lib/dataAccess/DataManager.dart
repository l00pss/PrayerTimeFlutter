
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataManager{
  static final String databaseName = "prayertime.sqlite";

  static Future<Database> getConnection() async{
    String databasaPath = join(await getDatabasesPath(),databaseName);
    if(await databaseExists(databasaPath)){
    }else{
      ByteData data = await rootBundle.load("lib/dataAccess/db/prayertime.sqlite");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(databasaPath).writeAsBytes(bytes,flush: true);
    }
    return openDatabase(databasaPath);
  }
}