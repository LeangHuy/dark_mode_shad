import 'package:dark_mode_shad/test/popover.dart';
import 'package:dark_mode_shad/test/select.dart';
import 'package:dark_mode_shad/test/tab.dart';
import 'package:dark_mode_shad/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    const shadThemeColors = [
      'blue',
      'gray',
      'green',
      'neutral',
      'orange',
      'red',
      'rose',
      'slate',
      'stone',
      'violet',
      'yellow',
      'zinc',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Dark mode test')),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Change mode here', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Obx(
              () => Column(
                children: [
                  ShadIconButton(
                    onPressed: themeController.toggleTheme,
                    icon: Icon(
                      themeController.isDarkMode.value
                          ? Icons.light_mode
                          : Icons.dark_mode,
                    ),
                  ),
                  Text(themeController.isDarkMode.value? 'Dark mode':'Light mode')
                ],
              )
            ),
            // ShadSelect<String>(
            //   initialValue: themeController.colorSchemeName.value,
            //   maxHeight: 200,
            //   options: shadThemeColors.map((option) {
            //     return ShadOption(
            //       value: option,
            //       child: Text(option.capitalizeFirst!),
            //     );
            //   }).toList(),
            //   selectedOptionBuilder: (context, value) =>
            //       Text(value.capitalizeFirst!),
            //   onChanged: (value) {
            //     if (value != null) {
            //       themeController.changeColorScheme(value);
            //     }
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ShadButton(child: const Text('Primary'), onPressed: () {}),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 320),
                  child: const ShadInput(
                    placeholder: Text('Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                PopoverPage(),
                SelectExample()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabsExample()
              ],
            )
          ],
        ),
      ),
    );
  }
}
