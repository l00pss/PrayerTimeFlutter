
import 'package:jiffy/jiffy.dart';

import 'BaseTime.dart';
import 'ExtraTime.dart';

class City {
  late int id;
  late String cityIndex;
  late String cityOfName;
  late String qiblaAngle;
  late String magdeg;
  late BaseTimes baseTimes;
  late ExtraTimes extraTimes;

  City({
    required this.id,
    required this.cityIndex,
    required this.cityOfName,
    required this.qiblaAngle,
    required this.magdeg,
    required this.baseTimes,
    required this.extraTimes
  });



  factory City.fromJson(Map<String, dynamic> decoded) {
    return City(
        id: Jiffy().dayOfYear,
        cityIndex: decoded['cityIndex'],
        cityOfName: decoded['cityOfName'],
        qiblaAngle: decoded['qiblaAngle'],
        magdeg: decoded['magdeg'],
        baseTimes: BaseTimes.fromJson(decoded['baseTime']),
        extraTimes: ExtraTimes.fromJson(decoded['extraTime'])
    );
  }
}