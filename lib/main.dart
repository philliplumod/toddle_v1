import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:toddle/services/theme_services.dart';
import 'package:toddle/ui/homepage.dart';
import 'package:toddle/ui/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: MyTheme.lightTheme,
    darkTheme: MyTheme.darkTheme,
    themeMode: ThemeService().theme,
    home: const HomePage(),
  ));
}
