import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:prayertime/pages/base/menu/MenuItems.dart';
import 'package:flutter/services.dart';
import 'HomePanel.dart';
import 'menu/MenuPage.dart';


class DrawerLayout extends StatefulWidget {

  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  MenuItem cuttentItem = MenuItems.regard;

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) => ZoomDrawer(
      style: DrawerStyle.Style1,
      menuScreen: MenuPage(
          currentItem:cuttentItem,
          onSelectedItem : (item){
            setState(()=> cuttentItem = item);
          }
      ),
      mainScreen: MyHomePage());
  }

