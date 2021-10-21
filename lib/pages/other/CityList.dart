import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var actionItems = getListOfActionButtons();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Şəhər seçin",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                itemCount: actionItems.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        height: 50,
                        child: actionItems[index],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}



List<Widget> getListOfActionButtons() {
  var actionItems = <Widget>[];

  return actionItems;
}