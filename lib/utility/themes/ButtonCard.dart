import 'package:flutter/material.dart';


class ButtonCard extends StatelessWidget {
  String title;
  IconData iconData;
  Function onPressed;

  ButtonCard(this.title, this.iconData, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          decoration: BoxDecoration(
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(iconData),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
