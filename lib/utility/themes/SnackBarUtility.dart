import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SnackBarUtility {
  Icon icon;
  String text;
  SnackBarUtility({required this.icon, required this.text});

  void getSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Row(
          children: [
            icon,
            SizedBox(width: 10,),
            Text(text,style: TextStyle(fontSize: 20),)
          ],
        ),duration: Duration(seconds: 1),)
    );
  }

}
