import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_codes/sample_feature/home_screen.dart';
import 'package:my_codes/settings/settings_controller.dart';
import 'package:my_codes/settings/settings_service.dart';

import 'generated/l10n.dart';
import 'localization/localization.dart';

void main() async {
  final settingController = SettingController(SettingService());
  await settingController.loadSetting();
  runApp(MyApp(
    settingController: settingController,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.settingController});
  final SettingController settingController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingController,
      builder: (context, child) {
        return MaterialApp(
          restorationScopeId: 'test', // для будущей навигации))
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: Localization.iterator, 
          debugShowCheckedModeBanner: false,
          onGenerateTitle: ((BuildContext context) => S.of(context).app_title),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
