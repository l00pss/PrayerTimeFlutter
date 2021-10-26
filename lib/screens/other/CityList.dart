import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayertime/dataAccess/repositories/CityListManager.dart';
import 'package:prayertime/utility/themes/ButtonCard.dart';

class CityList extends StatefulWidget {

  @override
  _CityListState createState() => _CityListState();
}

class _CityListState extends State<CityList> {


  Future<List<ButtonCard>> getWidgetList() async{
    //await CheckerCityList().getDataFromApi();
    var list = await CityListManager().getAll();
    var _actionItems = <ButtonCard>[];
    list.forEach((element) {
        _actionItems.add(ButtonCard(element.name, Icons.location_city, (){
            Navigator.pop(context);
        }));
    });
    return _actionItems;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getWidgetList(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }else{
            return SafeArea(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: ListView.builder(
                    itemCount: (snapshot.data as List).length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          child: SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                snapshot.data[index]
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            );
          }
        },
      ),
    );
  }
}



/*

 */