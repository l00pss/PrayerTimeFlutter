import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prayertime/bloc_models/CityComponentCubit.dart';
import 'package:prayertime/bloc_models/CityModel.dart';
import 'package:prayertime/dataAccess/repositories/CityListDao.dart';
import 'package:prayertime/entities/CityListComponent.dart';
import 'package:prayertime/screens/base/DrawerLayout.dart';
import 'package:get/get.dart';

import 'core/utility/themes/ThemeFormat.dart';
import 'dataAccess/checkData/CheckerCityList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

Future<void> truncate() async{
  //await CityListDao().truncate();
  //await CheckerCityList().getDataFromApi();
  //await CheckerCityList().getAllComponent();
  //await CityController().getDecode(1425);
}
  @override
  Widget build(BuildContext context) {
    truncate();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CityComponentCubit(CityListDao()))
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NamazVaxti.Org',// your translations
        locale:
            Locale('az', 'AZ'), // translations will be displayed in that locale
        fallbackLocale: Locale('ru', '`RU`'),
        theme: ThemeFormat.DARK(),
        home: DrawerLayout(),
      ),
    );
  }
}
