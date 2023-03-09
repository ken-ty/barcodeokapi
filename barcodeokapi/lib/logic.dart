import 'package:riverpod_sample/count_data.dart';

// [共通機能] xxLogic
class Logic {
  CountData _countData = CountData(
    count: 0,
    countUp: 0,
    countDown: 0,
  );

  get countData => _countData;

  increase() {
    _countData = _countData.copyWith(
      count: _countData.count + 1,
      countUp: _countData.countUp + 1,
    );
  }

  decrease() {
    _countData = _countData.copyWith(
      count: _countData.count - 1,
      countDown: _countData.countDown + 1,
    );
  }

  reset() {
    _countData = CountData(
      count: 0,
      countUp: 0,
      countDown: 0,
    );
  }
}
