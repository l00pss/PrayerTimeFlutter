import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyWordCard extends StatefulWidget {

  @override
  _DailyWordCardState createState() => _DailyWordCardState();
}

class _DailyWordCardState extends State<DailyWordCard> {
  bool visible = false;

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(FontAwesomeIcons.bookmark),
                Text(" Hikmət Əhli buyurdu ki,",style: Theme.of(context).textTheme.bodyText2,),
                Spacer(),
                IconButton(onPressed: (){
                  setState(() {
                    visible = !visible;
                  });
                }, icon: Icon(FontAwesomeIcons.chevronDown))
              ],
            ),
            Visibility(
              visible: visible,
              child: Container(
                child: Text("  Gözəl əxlaq, haramlardan çəkinib halalı axtarmaq, digər insanlarla olduğu kimi ailə üzvləriylə də yaxşı dolanıb onların ehtiyaclarını təmin etməkdir."),
              ),
            )
          ],
        ),
      ),
    );
  }
}
