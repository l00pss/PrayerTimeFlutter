import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'az_AZ': {
      'cityname': 'Şəhər adı',
    },
    'ru_RU': {
      'hello': 'Hallo Welt',
    }
  };
}
