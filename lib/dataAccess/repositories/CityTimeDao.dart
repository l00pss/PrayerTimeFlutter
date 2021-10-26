import 'package:prayertime/dataAccess/repositories/CityTimeRepository.dart';

import '../DataManager.dart';

class CityTimeDao extends CityTimeRepository{

  @override
  Future<void> createTable(int nameOfTable) async {
    var connection = await DataManager.getConnection();
    List<Map<String,dynamic>> maps = await connection.rawQuery("SELECT * FROM city_list");
  }
}