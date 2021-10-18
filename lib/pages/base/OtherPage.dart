import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtherCard(text: "Zikrmatik", icon: Icons.bubble_chart_outlined, onPressed: (){}),
                OtherCard(text: "Təqvim", icon: Icons.calendar_today_rounded, onPressed: (){}),
                OtherCard(text: "Dini Günlər", icon: Icons.today, onPressed: (){})
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OtherCard(text: "Dini Kitablar", icon: FontAwesomeIcons.book, onPressed: (){}),
                OtherCard(text: "Dini Mövzular", icon: FontAwesomeIcons.calendarDay, onPressed: (){}),
                OtherCard(text: "Zəkat Hesabla", icon: Icons.money, onPressed: (){}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OtherCard(text: "Hesablama Qaydası", icon: Icons.timelapse, onPressed: (){}),
              ],
            )
          ],
        )
      ),
    );
  }
}


class OtherCard extends StatelessWidget {
  String text;
  IconData icon;
  Function onPressed;

  OtherCard({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed(),
        child: Container(
          width: width / 3.6,
          height: (width)/3.2,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,size: width/8,),
              SizedBox(
                height: width/30,
              ),
              Text(text,textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
