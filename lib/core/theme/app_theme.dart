import 'package:flutter/material.dart';

const seedColor = Colors.white;

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ),
      );
}
