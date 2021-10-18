import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prayertime/utility/themes/SpanText.dart';
import 'package:prayertime/utility/themes/ToggleChip.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    double screemWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: screemWidth / 2.5,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [ListCardColum()],
        ),
      ),
    );
  }
}

class ListCardColum extends StatelessWidget {
  const ListCardColum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 10),
      child: Container(
          width: screenWidth / 1.1,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpanText(
                        text: " 1 Rebuil Evvel 1444",
                        icon: Icon(Icons.calendar_today_outlined)),
                    SizedBox(
                      height: screenHeight / 100,
                    ),
                    SpanText(
                        text: " 13 Oktyabr 2021",
                        icon: Icon(Icons.calendar_today_rounded)),
                    SizedBox(
                      height: screenHeight / 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ToggleChip()
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(FontAwesomeIcons.cloudMoonRain,size: screenHeight / 13,),
                    Text("12°C",style: Theme.of(context).textTheme.headline5,)
                  ],
                )
              ],
            ),
          )),
    );
  }
}
