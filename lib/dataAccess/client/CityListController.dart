import 'dart:convert';

import 'package:prayertime/entities//CityComponent.dart';
import 'package:http/http.dart' as http;

import 'config.dart';

class CityListController{
  var list = <CityListComponent>[];

  Future<List<CityListComponent>> getDecode()async{
    final response = await http.get(Uri.parse("${Configurations.url}/api/dates/json/1.0/citylist"));
    if (response.statusCode == 202) {
      var rawData = jsonDecode(utf8.decode(response.bodyBytes));
      var dataList = rawData['data'];
      for(var i = 0;i < 56;i++){
        list.add(CityListComponent.fromJson(dataList[i]));
      }
      return list;
    } else {
      throw Exception('Unknown Exception : 0129');
    }
  }
}