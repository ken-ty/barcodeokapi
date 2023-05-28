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
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'ニュース'),
          BottomNavigationBarItem(icon: Icon(Icons.event_available), label: '試合情報'),
          BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store), label: 'グッズ'),
          BottomNavigationBarItem(icon: Icon(Icons.groups_3), label: 'チーム'),
          BottomNavigationBarItem(icon: Icon(Icons.stadium), label: 'スタジアム'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
