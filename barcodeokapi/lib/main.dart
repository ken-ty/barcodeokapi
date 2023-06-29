import 'package:barcodeokapi/core/domain_layer/permission_request_use_case.dart';
import 'package:barcodeokapi/core/ui_layer/app.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
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

  // TODO: クラッシュ ハンドラ構成 は 別ファイルに切り出す

  // 捕捉されなかった ( = main まで catch されずに到達した ) すべての「致命的」エラーを
  // フレームワークから Crashlytics に渡します.
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // 上記Flutter フレームワークによって処理されない、捕捉されなかった非同期エラーをすべて Crashlytics に渡します。
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // アプリに必要な権限の確認
  PermissionRequestUseCase.invoke();

  // 指定されたウィジェットをインフレートして画面にアタッチします.
  // ルート ウィジェットの作成なども行います.
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
