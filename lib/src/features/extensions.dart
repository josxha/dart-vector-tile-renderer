import 'dart:ui';

import '../context.dart';
import '../themes/style.dart';

extension ImageContextExtension on Context {
  bool hasImage(String imageName) =>
      tileSource.spriteIndex?.spriteByName[imageName] != null;
}

extension LayoutAnchorExtension on LayoutAnchor {
  Offset offset(Size size) => switch (this) {
        LayoutAnchor.center => Offset(-size.width / 2, -size.height / 2),
        LayoutAnchor.top => Offset(-size.width / 2, 0),
        _ => throw 'Not implemented: $name',
      };
}
