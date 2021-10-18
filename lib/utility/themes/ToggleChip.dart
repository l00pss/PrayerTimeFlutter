import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prayertime/utility/themes/SnackBarUtility.dart';


class ToggleChip extends StatefulWidget {
  String buttonText;
  ToggleChip({this.buttonText = "Digər Vaxtlar Bax"});

  @override
  _ToggleChipState createState() => _ToggleChipState();
}

class _ToggleChipState extends State<ToggleChip> {
  bool isBaseTime = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Theme.of(context).colorScheme.onPrimary)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.timer_sharp),
            TextButton(
              onPressed: (){
                setState(() {
                  if(isBaseTime){
                    SnackBarUtility(
                      text: "Digər vaxtlara keçid etdiz!",
                      icon: Icon(
                        FontAwesomeIcons.exclamationCircle,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ).getSnackBar(context);
                    widget.buttonText = "Əsas Vaxtlar Bax";
                  }
                  else{
                    SnackBarUtility(
                      text: "Əsas vaxtlara keçid etdiz!",
                      icon: Icon(
                        FontAwesomeIcons.exclamationCircle,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ).getSnackBar(context);
                    widget.buttonText = "Digər Vaxtlar Bax";
                  }
                  isBaseTime = !isBaseTime;
                });
              },
              child: Text(widget.buttonText,style: Theme.of(context).textTheme.bodyText2,),
            )
          ],
        ),
      ),
    );
  }
}
