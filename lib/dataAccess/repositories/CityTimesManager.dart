import '../DataManager.dart';

class CityTimesManager{

  Future<void> createTable(int nameOfTable) async {
    var connection = await DataManager.getConnection();
    List<Map<String,dynamic>> maps = await connection.rawQuery("SELECT * FROM city_list");

  }
}