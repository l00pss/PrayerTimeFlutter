import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItems {
  static  MenuItem regard = MenuItem("Vaxtlar", FontAwesomeIcons.home);
  static  MenuItem comment = MenuItem("Şərh Et", FontAwesomeIcons.comment);
  static  MenuItem report = MenuItem("Bildir", FontAwesomeIcons.reply);
  static  MenuItem help = MenuItem("Kömək", Icons.help);
  static  MenuItem exit = MenuItem("Çıxış", Icons.exit_to_app);

  static  List<MenuItem> all = <MenuItem>[
    regard,
    comment,
    report,
    help,
    exit
  ];


}

class MenuItem{
  final String title;
  final IconData iconData;

  MenuItem(this.title, this.iconData);


}