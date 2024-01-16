import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:lpmi/components/theme_notifier.dart';


class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: _SettingScreen(),
    );
  }
}

class _SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);
    bool isDarkMode = themeNotifier.themeData.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: themeNotifier.themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Setting Screen',style: themeNotifier.themeData.textTheme.bodyMedium),
        backgroundColor: themeNotifier.themeData.appBarTheme.backgroundColor
      ),
      drawer: SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Setting Screen!',
              style: themeNotifier.themeData.textTheme.bodyMedium?.copyWith(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dark Mode', style: themeNotifier.themeData.textTheme.bodyMedium),
                Switch(
                  value: isDarkMode,
                  onChanged: themeNotifier.toggleTheme,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
