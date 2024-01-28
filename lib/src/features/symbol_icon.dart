import 'dart:ui';

abstract class SymbolIcon {
  const SymbolIcon();

  RenderedIcon? render(Offset offset,
      {required Size contentSize, required bool withRotation});
}

class RenderedIcon {
  final bool overlapsText;
  final Rect area;
  final Rect contentArea;

  const RenderedIcon(
      {required this.overlapsText,
      required this.area,
      required this.contentArea});
}
