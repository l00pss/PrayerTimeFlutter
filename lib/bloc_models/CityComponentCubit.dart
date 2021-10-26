

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertime/bloc_models/work_states/CityCompState.dart';
import 'package:prayertime/dataAccess/checkData/CheckerCityList.dart';
import 'package:prayertime/dataAccess/repositories/CityListRepository.dart';
import 'package:prayertime/entities/CityListComponent.dart';

class CityComponentCubit extends Cubit<CityCompState>{
  CityListRepository repository;
  CityComponentCubit(this.repository) : super(CityCompHead());

  Future<void> triggerCityComponentsList() async{
    try{
      print("Hey");
      emit(CityCompLoading());
      await CheckerCityList().getDataFromApi();
      var response = await repository.findAll();
      emit(CityCompLoadAccess(response as List<CityListComponent>));
    }catch(exception){
      emit(CityCompLoadException("Error 1423"));
    }
  }
}