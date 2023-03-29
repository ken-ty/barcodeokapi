import 'package:flutter/material.dart';

/// 画像取り込み画面
class PickImagePage extends StatefulWidget {
  const PickImagePage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<PickImagePage> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text('アルバムから画像を取り込む')),
      body: Center(
          child: ElevatedButton(
        onPressed: () => print("アルバムを開く"),
        child: Text("アルバムを開く"),
      )),
    );
  }
}
