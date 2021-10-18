import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TimeBox(timeName: "Imsaq", timeData: "04:23"),
            TimeBox(timeName: "Gunes", timeData: "06:23"),
            TimeBox(timeName: "Zohr", timeData: "13:23"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TimeBox(timeName: "Esr", timeData: "15:23"),
            TimeBox(isTime: true,timeName: "Sam", timeData: "18:53"),
            TimeBox(timeName: "Isa", timeData: "20:23"),
          ],
        )
      ],
    );
  }
}

class TimeBox extends StatefulWidget {
  bool isTime;
  String timeName;
  String timeData;


  TimeBox({this.isTime = false,required this.timeName,required this.timeData});

  @override
  _TimeBoxState createState() => _TimeBoxState();
}

class _TimeBoxState extends State<TimeBox> {
  Color boxColor = Color(0xFF448d2a);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height/8,
      width: width/3.5,
      decoration: BoxDecoration(
          color: widget.isTime ? boxColor :Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.timeName,style: Theme.of(context).textTheme.bodyText1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Theme.of(context).colorScheme.onPrimary,
              thickness: 2,
              height: 5,
            ),
          ),
          Text(widget.timeData,style: Theme.of(context).textTheme.headline6)
        ],
      ),
    );
  }
}

