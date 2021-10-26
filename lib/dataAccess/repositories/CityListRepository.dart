

import 'package:prayertime/entities/CityListComponent.dart';

abstract class CityListRepository{
  Future<List<CityListComponent>> findAll();
  Future<void> save(int index_city,String name);
  Future<void> delete(int id);
  Future<void> update(int id,int indexOfCity,String nameOfCity);
  Future<void> truncate();

}