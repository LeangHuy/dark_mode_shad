import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ThemeController extends GetxController {
  final storage = GetStorage();

  final isDarkMode = false.obs;
  final colorSchemeName = 'slate'.obs;

  @override
  void onInit() {
    isDarkMode.value = storage.read('theme_mode') ?? false;
    colorSchemeName.value = storage.read('color_scheme') ?? 'slate';
    super.onInit();
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    storage.write('theme_mode', isDarkMode.value);
  }

  void changeColorScheme(String name) {
    colorSchemeName.value = name;
    storage.write('color_scheme', name);
  }

  ShadThemeData get currentTheme => ShadThemeData(
    brightness: Brightness.light,
    colorScheme: ShadColorScheme.fromName(colorSchemeName.value),
  );

  ShadThemeData get currentDarkTheme => ShadThemeData(
    brightness: Brightness.dark,
    colorScheme: ShadColorScheme.fromName(
      colorSchemeName.value,
      brightness: Brightness.dark,
    ),
  );

  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
}
