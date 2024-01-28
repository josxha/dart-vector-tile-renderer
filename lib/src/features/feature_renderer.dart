import '../context.dart';
import '../logger.dart';
import '../model/tile_model.dart';
import '../themes/style.dart';
import '../themes/theme.dart';
import 'fill_renderer.dart';
import 'line_renderer.dart';
import 'symbol_line_renderer.dart';
import 'symbol_point_renderer.dart';

abstract class FeatureRenderer {
  const FeatureRenderer();

  void render(
    Context context,
    ThemeLayerType layerType,
    Style style,
    TileLayer layer,
    TileFeature feature,
  );
}

class FeatureDispatcher extends FeatureRenderer {
  final Logger logger;
  final Map<ThemeLayerType, FeatureRenderer> typeToRenderer;
  final Map<TileFeatureType, FeatureRenderer> symbolTypeToRenderer;

  FeatureDispatcher(this.logger)
      : typeToRenderer = createDispatchMapping(logger),
        symbolTypeToRenderer = createSymbolDispatchMapping(logger);

  @override
  void render(
    Context context,
    ThemeLayerType layerType,
    Style style,
    TileLayer layer,
    TileFeature feature,
  ) {
    final delegate = switch (layerType) {
      ThemeLayerType.symbol => symbolTypeToRenderer[feature.type],
      _ => typeToRenderer[layerType],
    };

    if (delegate == null) {
      logger.warn(() =>
          'layer type $layerType feature ${feature.type} is not implemented');
      return;
    }

    delegate.render(context, layerType, style, layer, feature);
  }

  static Map<ThemeLayerType, FeatureRenderer> createDispatchMapping(
          Logger logger) =>
      {
        ThemeLayerType.fill: FillRenderer(logger),
        ThemeLayerType.fillExtrusion: FillRenderer(logger),
        ThemeLayerType.line: LineRenderer(logger),
      };

  static Map<TileFeatureType, FeatureRenderer> createSymbolDispatchMapping(
          Logger logger) =>
      {
        TileFeatureType.point: SymbolPointRenderer(logger),
        TileFeatureType.linestring: SymbolLineRenderer(logger),
      };
}
