// [画面機能]
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/logic.dart';
import 'package:riverpod_sample/provider.dart';

class ViewModel {
  final Logic _logic = Logic();
  late WidgetRef _ref;

  /// ref を外部から渡す
  ///
  /// ConsumerState<T>.initState() 内で必ず呼んでください.
  ///
  /// ConsumerState<T> 以外だと, initStateで呼び出せません.
  /// その場合, 各メソッドでrefを渡すように調整が必要です.
  ///
  /// 使用例:
  /// ```
  /// class _XxxPageState extends ConsumerState<XxxPage> {
  ///   final ViewModel _viewModel = ViewModel();
  ///   @override
  ///   void initState() {
  ///     super.initState();
  ///
  ///     _viewModel.setRef(ref); // ← 重要！
  ///   }
  ///   ...
  /// }
  /// ```
  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  // getter
  get count => _ref.watch(countDataProvider).count.toString();
  get countUp => _ref.watch(countDataProvider).countUp.toString();
  get countDown => _ref.watch(countDataProvider).countDown.toString();

  // +1 実行
  onIncrease() {
    _logic.increase();

    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  // -1 実行
  onDecrease() {
    _logic.decrease();

    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }

  // リセット実行
  onReset() {
    _logic.reset();

    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }
}
