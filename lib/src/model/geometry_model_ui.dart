import 'dart:ui';

import 'geometry_model.dart';

abstract class UiGeometry {
  static Offset createPoint(TilePoint point) => Offset(point.x, point.y);

  static Path createLine(TileLine line) =>
      Path()..addPolygon(_line(line.points), false);

  static Path createPolygon(TilePolygon polygon) {
    final path = Path()..fillType = PathFillType.evenOdd;
    for (final ring in polygon.rings) {
      path.addPolygon(_line(ring.points), true);
    }
    return path;
  }

  static List<Offset> _line(List<TilePoint> points) =>
      points.map((e) => createPoint(e)).toList(growable: false);
}
