import 'package:flutter/material.dart';


class SpanText extends StatelessWidget {
  String text;
  Icon icon;

  SpanText({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(text,style: Theme.of(context).textTheme.bodyText2,),
      ],
    );
  }
}
