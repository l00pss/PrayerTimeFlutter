import 'package:jiffy/jiffy.dart';

class ExtraTimes {
  int id;
  String israk;
  String dahve;
  String kerahat;
  String asri_sani;
  String isfirar;
  String istibak;
  String isa_sani;
  String midnight;
  String teheccud;
  String seher;

  ExtraTimes({
    required this.id,
    required this.israk,
    required this.dahve,
    required this.kerahat,
    required this.asri_sani,
    required this.isfirar,
    required this.istibak,
    required this.isa_sani,
    required this.midnight,
    required this.teheccud,
    required this.seher
  });

  factory ExtraTimes.fromJson(Map<String, dynamic> decoded) {
    return ExtraTimes(
      id: Jiffy().dayOfYear,
      israk: decoded['israk'],
      dahve: decoded['dahve'],
      kerahat: decoded['kerahat'],
      asri_sani: decoded['asri_sani'],
      isfirar: decoded['isfirar'],
      istibak: decoded['istibak'],
      isa_sani: decoded['isa_sani'],
      midnight: decoded['midnight'],
      teheccud: decoded['teheccud'],
      seher: decoded['seher'],
    );
  }
}