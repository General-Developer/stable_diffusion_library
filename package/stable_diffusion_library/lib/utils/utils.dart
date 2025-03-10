import 'dart:math' show Random;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class StableDiffusionLibraryUtils {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static String generateRandomSequence(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static String sanitizePrompt(String prompt) {
    return prompt
        .replaceAll(RegExp(r'[^\w\s-]'), '')
        .trim()
        .replaceAll(RegExp(r'\s+'), '_');
  }
}
