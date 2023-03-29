import 'package:barcodeokapi/ui/count/count_page.dart';
import 'package:barcodeokapi/ui/resize/resize_page.dart';
import 'package:barcodeokapi/ui/setting/setting_page.dart';
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
    SettingPage(),
    ResizePage(),
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
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
          BottomNavigationBarItem(icon: Icon(Icons.compare), label: 'リサイズ'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
