import 'package:flutter/material.dart';
import 'package:prayertime/dataAccess/DataManager.dart';
import 'package:prayertime/models/CityComponent.dart';
import 'package:sqflite/sqflite.dart';

class CityComponentDao{


  Future<List<CityListComponent>> getAll() async {
    var connection = await DataManager.getConnection();
    List<Map<String,dynamic>> maps = await connection.rawQuery("SELECT * FROM city_list");
    return List.generate(maps.length, (index) {
      var row = maps[index];
      return CityListComponent(id: row["id"], index_city: row["index_city"], name: row["name"]);
    });
  }

  Future<void> save(int index_city,String name) async {
    var connection = await DataManager.getConnection();
    var data = Map<String,dynamic>();
    data['index_city'] = index_city;
    data['name'] = name;
    await connection.insert("city_list", data,conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> delete(int id) async {
    var connection = await DataManager.getConnection();
    await connection.delete("city_list",where: "id = ?",whereArgs: [id]);
  }

  Future<void> update(int id,int indexOfCity,String nameOfCity)async {
    var connection = await DataManager.getConnection();
    var data = Map<String,dynamic>();
    data['index_city'] = indexOfCity;
    data['name'] = nameOfCity;
    await connection.update("city_list",data,where: "id = ?" ,whereArgs: [id]);
  }

  Future<void> truncate()async{
    var connection = await DataManager.getConnection();
    await connection.rawQuery("DELETE from city_list");
  }
}