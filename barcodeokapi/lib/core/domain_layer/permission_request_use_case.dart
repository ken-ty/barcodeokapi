import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

/// アプリに必要な権限を確認し,  許可以外ならリクエストを送る
///
/// アプリ起動時などに呼ばれることを想定している.
///
/// Android なら 都度 権限変更ダイアログがが表示される.
/// iOS では 最初の1度だけ 権限変更ダイアログが表示され,
/// 権限設定後は表示されなくなる.
///
/// 許可リクエストを送るだけなので, 権限が必要な機能の実装では,
/// 内部処理で Permission を確認して, 許可されてなければ
/// 実行をキャンセルしてください.
class PermissionRequestUseCase {
  static void invoke() {
    needPermissions.forEach(
      (element) => _permissionRequestIfNoGranted(element),
    );
  }

  // TODO: このデータは別の場所で定義したい.
  /// このアプリに必要な権限
  static List<Permission> needPermissions = [
    Permission.camera,
    Permission.audio,
    if (Platform.isIOS) Permission.photos,
  ];

  /// 引数で渡された権限を確認し, 許可以外ならリクエストを送る
  static Future<void> _permissionRequestIfNoGranted(Permission permission) async {
    final status = await permission.status;
    if (status.isGranted) return;

    permission.request();
  }
}
