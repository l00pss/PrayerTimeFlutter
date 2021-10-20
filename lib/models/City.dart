
import 'BaseTime.dart';
import 'ExtraTime.dart';

class City {

  late String cityIndex;
  late String cityOfName;
  late String qiblaAngle;
  late String magdeg;
  late BaseTimes baseTimes;
  late ExtraTimes extraTimes;

  City({
    required this.cityIndex,
    required this.cityOfName,
    required this.qiblaAngle,
    required this.magdeg,
    required this.baseTimes,
    required this.extraTimes
  });



  factory City.fromJson(Map<String, dynamic> decoded) {
    return City(
        cityIndex: decoded['cityIndex'],
        cityOfName: decoded['cityOfName'],
        qiblaAngle: decoded['qiblaAngle'],
        magdeg: decoded['magdeg'],
        baseTimes: BaseTimes.fromJson(decoded['baseTime']),
        extraTimes: ExtraTimes.fromJson(decoded['extraTime'])
    );
  }
}