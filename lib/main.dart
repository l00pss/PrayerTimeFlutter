import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prayertime/dataAccess/CityComponentDao.dart';
import 'package:prayertime/models/CityComponent.dart';
import 'package:prayertime/pages/base/DrawerLayout.dart';
import 'package:prayertime/utility/themes/ThemeFormat.dart';
import 'package:get/get.dart';

import 'languages/Translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<void> getAllComponent() async {
    List<CityListComponent> list = await CityComponentDao().getAll();
    for(CityListComponent cityListComponent in list){
      print(cityListComponent.name);
      print(cityListComponent.index_city);
    }
  }

  Future<void> save() async {
    await CityComponentDao().save(234, "Ba3ku");
  }

  Future<void> delete() async {
    await CityComponentDao().delete(3);
  }


  @override
  Widget build(BuildContext context) {
    save();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NamazVaxti.Org',
      translations: Messages(), // your translations
      locale:
          Locale('az', 'AZ'), // translations will be displayed in that locale
      fallbackLocale: Locale('ru', '`RU`'),
      theme: ThemeFormat.DARK(),
      home: DrawerLayout(),
    );
  }
}
