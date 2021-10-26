import 'package:flutter/material.dart';
import 'package:prayertime/entities/CityListComponent.dart';
import 'package:prayertime/widgets//cards/ExportCards.dart';

class HomePage extends StatefulWidget {
  static var listComponent = CityListComponent(id: 0, index_city: 1425, name: "Baku");

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
  }

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
            CityCard(),
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
