import 'package:prayertime/dataAccess/DataManager.dart';
import 'package:prayertime/dataAccess/repositories/CityListRepository.dart';
import 'package:prayertime/entities/CityListComponent.dart';
import 'package:prayertime/entities/CityListComponent.dart';
import 'package:sqflite/sqflite.dart';

class CityListDao extends CityListRepository{



  @override
  Future<void> save(int index_city,String name) async {
    var connection = await DataManager.getConnection();
    var data = Map<String,dynamic>();
    data['index_city'] = index_city;
    data['name'] = name;
    await connection.insert("city_list", data,conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<void> delete(int id) async {
    var connection = await DataManager.getConnection();
    await connection.delete("city_list",where: "id = ?",whereArgs: [id]);
  }

  @override
  Future<void> update(int id,int indexOfCity,String nameOfCity)async {
    var connection = await DataManager.getConnection();
    var data = Map<String,dynamic>();
    data['index_city'] = indexOfCity;
    data['name'] = nameOfCity;
    await connection.update("city_list",data,where: "id = ?" ,whereArgs: [id]);
  }

  @override
  Future<void> truncate()async{
    var connection = await DataManager.getConnection();
    await connection.rawQuery("DELETE from city_list");
  }

  @override
  Future<List<CityListComponent>> findAll() async {
    var connection = await DataManager.getConnection();
    List<Map<String,dynamic>> maps = await connection.rawQuery("SELECT * FROM city_list");
    return List.generate(maps.length, (index) {
      var row = maps[index];
      return CityListComponent(id: row["id"], index_city: row["index_city"], name: row["name"]);
    });
  }
}