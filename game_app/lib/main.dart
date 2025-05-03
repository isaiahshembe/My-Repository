import 'package:flutter/material.dart';
import 'package:game_app/core/themes/app_themes.dart';
import 'package:game_app/presentation/pages/auth/login_page.dart';
import 'package:game_app/presentation/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Uganda Esports Tournaments',
  theme: AppTheme.darkTheme,
  darkTheme: AppTheme.darkTheme,
  themeMode: ThemeMode.system,

);
  }
}
