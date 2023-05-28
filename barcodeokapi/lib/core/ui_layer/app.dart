
import 'package:barcodeokapi/config/menu.dart';
import 'package:flutter/material.dart';

/// このアプリの ルートウィジェット
///
/// ここで アプリ全体のデザインや初期ページを設定する
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'バーコード オカピ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Menu(),
    );
  }
}
