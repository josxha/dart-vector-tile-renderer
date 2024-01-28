import '../logger.dart';
import 'light_theme.dart';
import 'theme.dart';
import 'theme_reader.dart';

class ProvidedThemes {
  const ProvidedThemes._();

  static Theme lightTheme({Logger? logger}) =>
      ThemeReader(logger: logger).read(lightThemeData);
}
