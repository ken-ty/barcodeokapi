import 'package:barcodeokapi/ui_layer/count/count_page.dart';
import 'package:barcodeokapi/ui_layer/pick_image_page.dart';
import 'package:barcodeokapi/ui_layer/resize_page.dart';
import 'package:barcodeokapi/ui_layer/setting_page.dart';
import 'package:flutter/material.dart';

/// メニュー
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var _pages = [
    Home(),
    PickImagePage(),
    ResizePage(),
    SettingPage(),
  ];

  int _pageIndex = 0;

  void _onItemTapped(int index) {
    _pageIndex = index;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.upload_file), label: '取り込み'),
          BottomNavigationBarItem(icon: Icon(Icons.compare), label: 'リサイズ'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
