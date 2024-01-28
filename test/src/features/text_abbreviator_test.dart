import 'package:test/test.dart';
import 'package:vector_tile_renderer/src/features/text_abbreviator.dart';

void main() {
  test('abbreviates road names', () {
    expect(TextAbbreviator.abbreviate('Some Road'), 'Some Rd');
    expect(TextAbbreviator.abbreviate('Some Crescent'), 'Some Cres');
  });
  test('does not abbreviate other words', () {
    expect(TextAbbreviator.abbreviate('Crescent Road'), 'Crescent Rd');
    expect(TextAbbreviator.abbreviate('Road Road'), 'Road Rd');
  });
}
