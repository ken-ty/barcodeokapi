import 'package:barcodeokapi/config/app.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // runApp の前に色々やりたいので, runApp で行われるバインドを先に行う.
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase のセットアップ
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 捕捉されなかった ( = main まで catch されずに到達した ) すべての「致命的」エラーを
  // フレームワークから Crashlytics に渡します.
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // 指定されたウィジェットをインフレートして画面にアタッチします.
  // ルート ウィジェットの作成なども行います.
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
