import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prayertime/pages/base/DrawerLayout.dart';
import 'package:prayertime/pages/base/HomePanel.dart';
import 'package:prayertime/utility/themes/ThemeFormat.dart';
import 'package:get/get.dart';

import 'languages/Translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
