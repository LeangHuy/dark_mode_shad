import 'package:dark_mode_shad/home_page.dart';
import 'package:dark_mode_shad/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return Obx(
      () => ShadApp.custom(
        theme: themeController.currentTheme,
        darkTheme: themeController.currentDarkTheme,
        themeMode: themeController.themeMode,
        appBuilder: (context) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Theme.of(context),
            home: const HomePage(),
            builder: (context, child) {
              return ShadAppBuilder(child: child!);
            },
          );
        },
      ),
    );
  }
}
