import 'package:flutter/material.dart';
import 'package:prayertime/widgets//cards/ExportCards.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
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
