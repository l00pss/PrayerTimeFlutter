import 'package:prayertime/dataAccess/client/CityListController.dart';
import 'package:prayertime/dataAccess/repositories/CityListManager.dart';
import 'package:prayertime/entities//CityComponent.dart';


class CheckerCityList{

  int getToYear(){
    return  DateTime.now().year;
  }

  Future<void> getDataFromApi()async{
    var data = await CityListController().getDecode();
    for(CityListComponent city in data){
      save(city.index_city, city.name);
    }
  }

  Future<void> getAllComponent() async {
    List<CityListComponent> list = await CityListManager().getAll();
    for(CityListComponent cityListComponent in list){
      print(cityListComponent.name);
      print(cityListComponent.index_city);
    }
  }

  Future<void> save(int index,String name) async {
    await CityListManager().save(index, name);
  }

  Future<void> delete() async {
    await CityListManager().delete(3);
  }


}