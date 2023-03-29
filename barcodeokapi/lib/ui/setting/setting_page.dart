import 'package:flutter/material.dart';

/// 設定一覧
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text('設定')),
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
