import 'symbol_rotation.dart';

import '../context.dart';
import '../themes/expression/expression.dart';
import '../themes/style.dart';
import 'icon_renderer.dart';
import 'symbol_icon.dart';

extension SymbolLayoutExtension on SymbolLayout {
  SymbolIcon? getIcon(Context context, EvaluationContext evaluationContext,
      {required LayoutPlacement layoutPlacement}) {
    final iconName = icon?.icon.evaluate(evaluationContext);
    if (iconName == null) return null;

    final sprite = context.tileSource.spriteIndex?.spriteByName[iconName];
    final atlas = context.tileSource.spriteAtlas;
    if (sprite == null || atlas == null) {
      context.logger.warn(() => 'missing sprite: $icon');
      return null;
    }

    final size = icon?.size?.evaluate(evaluationContext) ?? 1.0;
    final anchor =
        icon?.anchor.evaluate(evaluationContext) ?? LayoutAnchor.DEFAULT;
    final rotate = icon?.rotate?.evaluate(evaluationContext);
    final rotationAlignment = iconRotationAlignment(evaluationContext,
        layoutPlacement: layoutPlacement);
    return IconRenderer(context,
        sprite: sprite,
        atlas: atlas,
        size: size,
        anchor: anchor,
        rotate: rotate,
        rotationAlignment: rotationAlignment);
  }
}
