import 'package:prayertime/dataAccess/client/CityListController.dart';
import 'package:prayertime/dataAccess/repositories/CityListDao.dart';
import 'package:prayertime/entities//CityListComponent.dart';


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
    List<CityListComponent> list = await CityListDao().findAll();
    for(CityListComponent cityListComponent in list){
      print(cityListComponent.name);
      print(cityListComponent.index_city);
    }
  }

  Future<void> save(int index,String name) async {
    await CityListDao().save(index, name);
  }

  Future<void> delete() async {
    await CityListDao().delete(3);
  }


}