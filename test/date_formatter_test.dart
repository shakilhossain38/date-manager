import 'package:date_manager/date_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateFormatter Tests', () {
    test('format short date', () {
      final date = DateTime(2025, 7, 24);
      final formatted = DateManager.format(date, DateManager.shortDate);
      expect(formatted, '24/07/2025'); // Day-first default
    });

    test('format US short date', () {
      final date = DateTime(2025, 7, 24);
      final formatted = DateManager.format(date, DateManager.shortDateUS);
      expect(formatted, '07/24/2025'); // US style
    });

    test('timeAgo', () {
      final date = DateTime.now().subtract(const Duration(days: 1));
      final result = DateManager.timeAgo(date);
      expect(result, contains('1 days ago')); // simple check
    });

    test('parse ISO date', () {
      final date = DateParser.parse('2025-07-24');
      expect(date.year, 2025);
      expect(date.month, 7);
      expect(date.day, 24);
    });
  });
}
