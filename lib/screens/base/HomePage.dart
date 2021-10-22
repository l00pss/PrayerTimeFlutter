import 'package:flutter/material.dart';
import 'package:prayertime/cards/CityCard.dart';
import 'package:prayertime/cards/ExportCards.dart';

class HomePage extends StatefulWidget {


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
