import 'package:flutter/material.dart';


class CityListComponent{
  final int id;
  final int index_city;
  final String name;

  CityListComponent({
    required this.id,
    required this.index_city,
    required this.name,
  });

  factory CityListComponent.fromJson(Map<String, dynamic> decoded){
    return CityListComponent(
        id: decoded['id'],
        index_city: decoded['indexOfCity'],
        name: decoded['nameOfCity']
    );
  }

}