import 'package:flutter/material.dart';
import 'package:prayertime/core/utility/themes/ButtonCard.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var actionItems = getListOfActionButtons();
    return ListView.builder(
        itemCount: actionItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    actionItems[index]
                  ],
                ),
              ),
            ),
          );
        });
  }
}

List<Widget> getListOfActionButtons() {
  var actionItems = <Widget>[];
  actionItems.addAll([
    ButtonCard("Zəngli Saat", Icons.alarm, (){}),
    ButtonCard("Bildirişlər", Icons.notifications, (){}),
    ButtonCard("Dil", Icons.language, (){}),
    ButtonCard("Görünüş", Icons.theater_comedy, (){}),
    ButtonCard("Vaxtlar", Icons.timer_sharp, (){}),//Illik ayliq vaxtlar
    ButtonCard("Yeniləmələr", Icons.update, (){}),
  ]);
  return actionItems;
}



/*

 */