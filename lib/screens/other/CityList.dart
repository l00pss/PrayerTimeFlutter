import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertime/bloc_models/CityComponentCubit.dart';
import 'package:prayertime/bloc_models/work_states/CityCompState.dart';
import 'package:prayertime/core/utility/themes/ButtonCard.dart';

class CityList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CityComponentCubit,CityCompState>(
        builder: (context,state){
          if(state is CityCompLoadAccess){
            var list = state.list;
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context,index){
                  return Card(
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          ButtonCard(list[index].name, Icons.location_city, (){})
                        ],
                      ),
                    ),
                  );
                }
            );
          }else{
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mood_bad_rounded,size: 60,),
                SizedBox(height: 10,),
                Text("Bilinməyən Xəta")
              ],
            ),);
          }
        },
      ),
    );
  }
}


