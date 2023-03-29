import 'package:flutter/material.dart';

/// 画像リサイズ画面
class ResizePage extends StatefulWidget {
  const ResizePage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<ResizePage> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text('画像をリサイズ')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("デバイス情報"),
          ),
          ListTile(
            title: Text("デバイス情報"),
          )
        ],
      ),
    );
  }
}
