import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/count_data.dart';

/// タイトルstateのプロバイダ
final titleProvider = Provider<String>((ref) => 'タイトル');

/// メッセージstateのプロバイダ
final messageProvider = Provider<String>((ref) => 'メッセージ');

/// カウントstateのプロバイダ ( 後で消す )
final countProvider = StateProvider<int>((ref) => 0);

/// カウントstateのプロバイダ
final countDataProvider = StateProvider<CountData>(
  (ref) => CountData(
    count: 0,
    countUp: 0,
    countDown: 0,
  ),
);
