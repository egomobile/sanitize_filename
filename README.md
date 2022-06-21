Dart package, which is a clone of the popular [sanitize-filename](https://www.npmjs.com/package/sanitize-filename) npm module by [Parsha Pourkhomami](https://github.com/parshap).

## Usage

```dart
import 'package:sanitize_filename/sanitize_filename.dart';

void main() {
  const unsafeUserInput = "~/.\u0000ssh/authorized_keys";

  final safeUserInput1 = sanitizeFilename(unsafeUserInput);
  final safeUserInput2 = sanitizeFilename(unsafeUserInput, replacement: '-');

  // "~.sshauthorized_keys"
  print("safeUserInput1: $safeUserInput1");
  // "~-.-ssh-authorized_keys"
  print("safeUserInput2: $safeUserInput2");
}
```
