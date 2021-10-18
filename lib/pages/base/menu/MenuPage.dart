import 'package:flutter/material.dart';
import 'package:prayertime/pages/base/menu/MenuItems.dart';
class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;


  MenuPage({required this.currentItem, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 2,)
            ],
          ),
        ),
      )
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTile(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    selectedTileColor: Color(0xFFf09758),
    selected: currentItem == item,
    minLeadingWidth: 20,
    leading: Icon(item.iconData),
    title: Text(item.title),
    onTap: (){},
  );
}
