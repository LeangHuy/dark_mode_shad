import 'package:dark_mode_shad/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(title: const Text('Dark mode test')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Change mode here', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Obx(
              () => ShadIconButton(
                onPressed: themeController.toggleTheme,
                icon: Icon(
                  themeController.isDarkMode.value
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
