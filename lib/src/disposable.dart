/// 解放処理が必要なオブジェクト.
abstract class Disposable {
  /// 管理しているリソースを開放する.
  ///
  /// NOTE.
  /// [dispose]を２回以上コールした場合の挙動は不定である.
  void dispose();
}
