[![Github Actions](https://github.com/vivitainc/flutter_disposable_interface/actions/workflows/flutter-package-test.yaml/badge.svg)](https://github.com/vivitainc/flutter_disposable_interface/actions/workflows/flutter-package-test.yaml)

## Features

Java/Kotlinの Disposable インターフェースに相当するインターフェースを提供する.

これはClassが[dispose()]をコールすることによって握っているリソースを解放するというマークとして利用される.

## Usage

```dart
class ExampleObject implements Disposable {
    @override
    void dispose() {
        // destroy resources.
    }
}
```
