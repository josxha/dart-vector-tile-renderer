import 'package:vector_tile/vector_tile.dart';

import '../../logger.dart';

export 'expression_parser.dart';

class EvaluationContext {
  final List<Map<String, VectorTileValue>> Function() _properties;
  final VectorTileGeomType? Function() _geometryType;
  final Logger logger;

  EvaluationContext(this._properties, this._geometryType, this.logger);

  getProperty(String name) {
    if (name == '\$type') {
      return _typeName();
    }
    final properties = _properties();
    for (final property in properties) {
      final value = property[name];
      if (value != null) {
        return value.dartStringValue ??
            value.dartIntValue?.toInt() ??
            value.dartDoubleValue ??
            value.dartBoolValue;
      }
    }
  }

  _typeName() {
    switch (_geometryType()) {
      case VectorTileGeomType.POINT:
        return 'Point';
      case VectorTileGeomType.LINESTRING:
        return 'LineString';
      case VectorTileGeomType.POLYGON:
        return 'Polygon';
      case VectorTileGeomType.UNKNOWN:
      case null:
        return null;
    }
  }
}

abstract class Expression {
  evaluate(EvaluationContext context);
}

class UnsupportedExpression extends Expression {
  final dynamic _json;

  UnsupportedExpression(this._json);

  get json => _json;

  @override
  evaluate(EvaluationContext context) => null;
}

class NotNullExpression extends Expression {
  final Expression _delegate;

  NotNullExpression(this._delegate);

  @override
  evaluate(EvaluationContext context) => _delegate.evaluate(context) != null;
}

class NotExpression extends Expression {
  final Expression _delegate;

  NotExpression(this._delegate);

  @override
  evaluate(EvaluationContext context) {
    final operand = _delegate.evaluate(context);
    if (operand is bool) {
      return !operand;
    }
    context.logger.warn(() => 'NotExpression expected bool but got $operand');
    return null;
  }
}

class EqualsExpression extends Expression {
  final Expression _first;
  final Expression _second;

  EqualsExpression(this._first, this._second);

  @override
  evaluate(EvaluationContext context) {
    return _first.evaluate(context) == _second.evaluate(context);
  }
}

class InExpression extends Expression {
  final Expression _first;
  final List _values;

  InExpression(this._first, this._values);

  @override
  evaluate(EvaluationContext context) {
    final first = _first.evaluate(context);
    return _values.any((e) => first == e);
  }
}

class AnyExpression extends Expression {
  final List<Expression> _delegates;

  AnyExpression(this._delegates);

  @override
  evaluate(EvaluationContext context) {
    for (final delegate in _delegates) {
      final val = delegate.evaluate(context);
      if (!(val is bool)) {
        context.logger.warn(() => 'AnyExpression expected bool but got $val');
      } else if (val) {
        return true;
      }
    }
    return false;
  }
}

class AllExpression extends Expression {
  final List<Expression> _delegates;

  AllExpression(this._delegates);

  @override
  evaluate(EvaluationContext context) {
    for (final delegate in _delegates) {
      final val = delegate.evaluate(context);
      if (!(val is bool)) {
        context.logger.warn(() => 'AllExpression expected bool but got $val');
      } else if (!val) {
        return false;
      }
    }
    return true;
  }
}