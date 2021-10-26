import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prayertime/screens/base/compass/CompassPage.dart';
import 'package:prayertime/screens/base/HomePage.dart';
import 'package:prayertime/screens/base/OtherPage.dart';
import 'package:prayertime/screens/base/SettingsPage.dart';
import 'package:prayertime/screens/menu/MenuWidget.dart';
import 'package:prayertime/utility/themes/SnackBarUtility.dart';
import 'package:prayertime/utility/themes/ThemeFormat.dart';
import 'package:get/get.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CompassPage(),
    OtherPage(),
    SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        leading: MenuWidget(),
        title: Text(
          "namazvaxti.Org",
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeFormat.LIGHT());
                    SnackBarUtility(
                      text: "Gündüz Rejimi",
                      icon: Icon(
                        FontAwesomeIcons.cloudSun,
                        color: Colors.white,
                      ),
                    ).getSnackBar(context);
                  } else {
                    Get.changeTheme(ThemeFormat.DARK());
                    SnackBarUtility(
                      text: "Gecə Rejimi",
                      icon: Icon(
                        FontAwesomeIcons.cloudMoon,
                        color: Colors.black,
                      ),
                    ).getSnackBar(context);
                  }
                  ;
                });
              },
              icon: Icon(FontAwesomeIcons.lightbulb))
        ],
      ),
      body: SafeArea(
          child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              tabBackgroundColor: Theme.of(context).colorScheme.onPrimary,
              activeColor: Theme.of(context).colorScheme.background,
              gap: 8,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabs: [
                GButton(
                  icon: Icons.timer_sharp,
                  text: 'Vaxtlar',
                  onPressed: (){},
                ),
                GButton(
                  icon: Icons.rotate_90_degrees_ccw,
                  text: 'Qiblə',
                ),
                GButton(
                  icon: Icons.devices_other,
                  text: 'Digər',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Sazlamalar',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

