// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:my_codes/settings/settings_service.dart';

class SettingController with ChangeNotifier{
  SettingController(this._settingService);
  final SettingService _settingService;
  Future<void> loadSetting()async{
    // logic here
    notifyListeners();
  }
}