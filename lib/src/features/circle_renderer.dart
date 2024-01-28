import '../../vector_tile_renderer.dart';
import '../context.dart';
import '../themes/expression/expression.dart';
import '../themes/style.dart';
import 'extensions.dart';
import 'feature_renderer.dart';

class CircleRenderer extends FeatureRenderer {
  final Logger logger;

  CircleRenderer(this.logger);

  @override
  void render(
    Context context,
    ThemeLayerType layerType,
    Style style,
    TileLayer layer,
    TileFeature feature,
  ) {
    if (!feature.hasPoints) {
      return;
    }
    final circlePaintExpression = style.circlePaint;
    if (circlePaintExpression == null) {
      logger.warn(() =>
          'circle does not have a circle paint for vector tile layer ${layer.name}');
      return;
    }

    final evaluationContext = EvaluationContext(
        () => feature.properties, feature.type, logger,
        zoom: context.zoom,
        zoomScaleFactor: context.zoomScaleFactor,
        hasImage: context.hasImage);

    final paint = style.circlePaint?.evaluate(evaluationContext);
    if (paint == null) {
      return;
    }

    final effectivePaint = context.paintProvider.provide(evaluationContext,
        paint: circlePaintExpression,
        strokeWidthModifier: (strokeWidth) {
          if (context.zoomScaleFactor > 1.0) {
            strokeWidth = strokeWidth / context.zoomScaleFactor;
          }
          return strokeWidth;
        },
        widthModifier: (strokeWidth) =>
            context.tileSpaceMapper.widthFromPixelToTile(strokeWidth));
    if (effectivePaint == null) {
      return;
    }
    final centerPoints = feature.points;
    for (var center in centerPoints) {
      // TODO check if circle is in TileClip
      context.canvas.drawCircle(
          center, 0.2, effectivePaint.paint());
    }
  }
}
