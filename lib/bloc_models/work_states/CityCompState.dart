import 'package:prayertime/entities/CityListComponent.dart';

abstract class CityCompState{
  CityCompState();
}

class CityCompHead extends CityCompState{
  CityCompHead();
}

class CityCompLoading extends CityCompState{
  CityCompLoading();
}


class CityCompLoadAccess extends CityCompState{
  List<CityListComponent> list;
  CityCompLoadAccess(this.list);
}

class CityCompLoadException extends CityCompState{
  String message;
  CityCompLoadException(this.message);
}

