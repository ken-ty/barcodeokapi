import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

/// 画像取り込み画面
class PickImagePage extends StatefulWidget {
  const PickImagePage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<PickImagePage> {
  File? _image;
  // final picker = ImagePicker();

  Future _getImage() async {
    // final pickedFile = await picker.getImage(source: ImageSource.gallery);

    // setState(() {
    //   if (pickedFile != null) {
    //     _image = File(pickedFile.path);
    //   } else {
    //     print('No image selected.');
    //   }
    // });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text('アルバムから画像を取り込む')),
      body: Column(children: [
        Center(
          child: _image == null ? Text('No image selected.') : Image.file(_image!),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.image),
      ),
    );
  }
}
