import 'package:flutter/material.dart';
import 'package:prayertime/cards/CityCard.dart';
import 'package:prayertime/cards/ExportCards.dart';
import 'package:prayertime/models/City.dart';
import 'package:prayertime/models/CityComponent.dart';

class HomePage extends StatefulWidget {
  static var listComponent = CityListComponent(id: 0, index_city: 1425, name: "Baku");
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CityCard(listComponent: HomePage.listComponent,),
            ListCard(),
            DailyWordCard(),
            SizedBox(
              height: height/80,
            ),
            TimeCard(),
          ],
        ),
      ),
    );
  }
}
