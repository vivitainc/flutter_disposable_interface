import 'dart:async';

import 'async_disposable.dart';

extension AsyncDisposableUse<T extends AsyncDisposable> on T {
  /// body()実行後、this.dispose()を自動的にコールする.
  /// また、dispose()は完了待ちを行わない.
  T2 use<T2>(T2 Function(T value) body) {
    try {
      return body(this);
    } finally {
      unawaited(dispose());
    }
  }
}

extension AsyncDisposableUseAsync<T extends AsyncDisposable> on T {
  /// await body()実行後、this.dispose()を自動的にコールする.
  /// また、dispose()は完了待ちを行う.
  Future<T2> useAsync<T2>(Future<T2> Function(T value) body) async {
    try {
      return await body(this);
    } finally {
      await dispose();
    }
  }
}
