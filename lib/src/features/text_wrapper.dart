import '../themes/expression/expression.dart';
import '../themes/style.dart';

class TextWrapper {
  final TextLayout layout;

  TextWrapper(this.layout);

  List<String> wrap(EvaluationContext context, String text) {
    double? textSize = layout.textSize.evaluate(context);
    if (textSize == null) {
      return [text];
    }
    final maxWidth = (layout.maxWidth?.evaluate(context) ?? 10.0).ceil();
    return wrapText(text, textSize, maxWidth);
  }
}

List<String> wrapText(String text, double textSize, int maxWidth) {
  final maxWidthInPoints = _oneEm * maxWidth;
  final textLength = text.length * textSize;
  // all words fit in one line
  if (textLength <= maxWidthInPoints) {
    return [text];
  }

  // words don't fit in one line
  final words = text.split(RegExp(r'\s'));
  int maxCharactersPerLine = (maxWidthInPoints / textSize).truncate();
  int optimalLineCount = (text.length / maxCharactersPerLine).ceil();
  int optimalWordsPerLine = (words.length / optimalLineCount).floor();
  final lines = <String>[];
  List<String>? currentLine;
  for (int wordIndex = 0; wordIndex < words.length; ++wordIndex) {
    if (currentLine == null) {
      currentLine = [words[wordIndex]];
    } else {
      currentLine.add(words[wordIndex]);
    }
    if (currentLine.length >= optimalWordsPerLine) {
      if (optimalWordsPerLine > 1 &&
          lines.length == (optimalLineCount - 1) &&
          wordIndex == words.length - 2) {
        final currentLineLengthPlusTrailingSpace = currentLine
            .map((e) => e.length * textSize)
            .reduce((a, b) => (a + b)) +
            (currentLine.length * textSize);
        final lastWordLength = words.last.length * textSize;
        if (currentLineLengthPlusTrailingSpace + lastWordLength <
            maxWidthInPoints) {
          currentLine.add(words.last);
          ++wordIndex;
        }
      }
      lines.add(currentLine.join(' '));
      currentLine = null;
    }
  }
  if (currentLine != null) {
    lines.add(currentLine.join(' '));
  }
  return lines;
}

const _oneEm = 24.0;
