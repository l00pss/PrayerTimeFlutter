

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayertime/bloc_models/work_states/CityCompState.dart';
import 'package:prayertime/dataAccess/checkData/CheckerCityList.dart';
import 'package:prayertime/dataAccess/repositories/CityListRepository.dart';
import 'package:prayertime/entities/CityListComponent.dart';

class CityComponentCubit extends Cubit<CityCompState>{
  CityListRepository repository;
  static var INSTANCE;
  CityComponentCubit(this.repository) : super(CityCompHead());

  Future<void> run() async{
    try{
      emit(CityCompLoading());
      var response = await repository.findAll();
      emit(CityCompLoadAccess(response));
    }catch(exception){
      emit(CityCompLoadException("Error 1423"));
    }
  }

  void setInstance(CityListComponent element){
    INSTANCE = element;
    emit(state);
  }
  CityListComponent getInstance(){
    if(INSTANCE == null){
      return CityListComponent(index_city: 1425,id: 0,name: "Baku");
    }else return INSTANCE;
  }


}