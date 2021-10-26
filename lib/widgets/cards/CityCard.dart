import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prayertime/entities/CityComponent.dart';
import 'package:prayertime/screens/base/HomePage.dart';
import 'package:prayertime/screens/other/CityList.dart';
import 'package:prayertime/utility/themes/SnackBarUtility.dart';
import 'package:timer_builder/timer_builder.dart';

class CityCard extends StatefulWidget {
  static CityListComponent listComponent = CityListComponent(id: 0, index_city: 1425, name: "Baku");


  @override
  _CityCardState createState() => _CityCardState();
}

String getSystemTime() {
  var now = new DateTime.now();
  return new DateFormat("HH:mm:ss").format(now);
}

class _CityCardState extends State<CityCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 1.05,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () async {

                },
                child: Text(
                  CityCard.listComponent.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                autofocus: true,
              ),
              IconButton(
                  onPressed: () {
                    SnackBarUtility(
                      text: "Xidmət hələki aktiv deyil",
                      icon: Icon(
                        Icons.location_disabled,
                        color: Theme.of(context).primaryColor,
                      ),
                    ).getSnackBar(context);
                  },
                  icon: Icon(
                    Icons.my_location,
                    size: screenWidth / 12,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Saat",
                  style: Theme.of(context).textTheme.headline2,
                ),
                TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
                  return Text("${getSystemTime()}",
                      style: Theme.of(context).textTheme.headline3);
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
