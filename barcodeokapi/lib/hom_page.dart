import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/home_page_view_model.dart';
import 'package:riverpod_sample/provider.dart';

/// ホーム画面
///
/// ボタンタップをカウントします.
///
/// +ボタンタップで+1, -ボタンタップで-1します.
/// リセットボタンタップでカウントをリセットします.
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  // HomePageのロジックや状態を全部この中に閉じ込めて, HomePageクラスの関心をレイアウトに集中する
  final ViewModel _viewModel = ViewModel();

  @override
  void initState() {
    super.initState();

    // viewModel に ref を渡して状態を参照できるようにする.
    _viewModel.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ref.read(titleProvider))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(ref.read(messageProvider)),
            Text(
              _viewModel.count,
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  tooltip: '-1',
                  onPressed: () => _viewModel.onDecrease(),
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  tooltip: '+1',
                  onPressed: () => _viewModel.onIncrease(),
                  child: const Icon(CupertinoIcons.plus),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(_viewModel.countDown),
                Text(_viewModel.countUp),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'リセット',
        onPressed: () => _viewModel.onReset(),
        child: const Icon(CupertinoIcons.refresh),
      ),
    );
  }
}
