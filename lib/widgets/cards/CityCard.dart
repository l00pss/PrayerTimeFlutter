import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:prayertime/bloc_models/CityComponentCubit.dart';
import 'package:prayertime/bloc_models/work_states/CityCompState.dart';
import 'package:prayertime/core/utility/themes/SnackBarUtility.dart';
import 'package:prayertime/screens/other/CityList.dart';
import 'package:timer_builder/timer_builder.dart';


String getSystemTime() {
  var now = new DateTime.now();
  return new DateFormat("HH:mm:ss").format(now);
}

class CityCard extends StatefulWidget {
  @override
  _CityCardState createState() => _CityCardState();
}

class _CityCardState extends State<CityCard> {
  var city;
  @override
  void initState() {
    super.initState();
  }
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CityList()));
                },
                child: BlocBuilder<CityComponentCubit,CityCompState>(
                  builder: (BuildContext context, state) {
                    return Text(
                      "AAA",
                      style: Theme.of(context).textTheme.headline1,
                    );
                  },
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
