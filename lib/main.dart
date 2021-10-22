import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prayertime/dataAccess/checkData/CheckerCityList.dart';
import 'package:prayertime/dataAccess/client/CityListController.dart';
import 'package:prayertime/dataAccess/repositories/CityListManager.dart';
import 'package:prayertime/models/CityComponent.dart';
import 'package:prayertime/screens/base/DrawerLayout.dart';
import 'package:prayertime/utility/themes/ThemeFormat.dart';
import 'package:get/get.dart';

import 'languages/Translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

Future<void> truncate() async{
  // await CityComponentDao().truncate();
  // await CheckerCityList().getDataFromApi();
  await CheckerCityList().getAllComponent();
}
  @override
  Widget build(BuildContext context) {
    truncate();

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
