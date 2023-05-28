import 'package:flutter/material.dart';

/// アプリのテーマ
class MyTheme {
  /// アプリテーマ ブルー
  static final kThemeBlue = ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
  ));

  /// アプリテーマ オレンジ
  static final kThemeOrange = ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.orange,
  ));

  /// アプリテーマ ダークモード
  static final kThemeDark = ThemeData.dark();
}
