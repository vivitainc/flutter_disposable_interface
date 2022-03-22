/// 解放処理が必要なオブジェクト.
abstract class AsyncDisposable {
  /// 管理しているリソースを開放する.
  ///
  /// NOTE.
  /// [dispose]を２回以上コールした場合の挙動は不定である.
  Future dispose();
}
