import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:lpmi/components/theme_notifier.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      backgroundColor: themeNotifier.themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Home Screen', style: themeNotifier.themeData.textTheme.bodyMedium),
        backgroundColor: themeNotifier.themeData.appBarTheme.backgroundColor
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text(
          'Welcome to the Home Screen!',
          style: themeNotifier.themeData.textTheme.bodyMedium?.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}