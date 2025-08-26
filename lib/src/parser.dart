/// Safe date parser utility
import 'package:intl/intl.dart';

import '../date_manager.dart';

/// Safe date parser utility
class DateParser {
  DateParser._(); // private constructor

  /// Parse a date string [dateString] into a [DateTime] object.
  ///
  /// If [pattern] is provided, uses strict parsing; otherwise tries common formats and ISO.
  /// Returns current date if parsing fails.
  static DateTime parse(String dateString, {String? pattern, String? locale}) {
    try {
      DateTime parsed;

      if (pattern != null) {
        // Strict parsing using provided pattern
        parsed = DateFormat(pattern, locale).parseStrict(dateString);
      } else {
        // Try ISO first
        parsed =
            DateTime.tryParse(dateString) ??
            // fallback to common patterns
            _tryCommonPatterns(dateString, locale) ??
            DateTime.now();
      }

      // Return date-only (ignore time)
      return DateTime(parsed.year, parsed.month, parsed.day);
    } catch (e) {
      return DateTime.now();
    }
  }

  /// Tries a set of common numeric and textual patterns to parse the date
  static DateTime? _tryCommonPatterns(String dateString, String? locale) {
    final patterns = [
      DateManager.shortDate, // dd/MM/yyyy
      DateManager.shortDateUS, // MM/dd/yyyy
      DateManager.isoDate, // yyyy/MM/dd
      DateManager.shortDateDash, // dd-MM-yyyy
      DateManager.shortDateDashUS, // MM-dd-yyyy
      DateManager.longDate, // 25 August 2025
      DateManager.longDateUS, // August 25, 2025
      DateManager.longDateAbbr, // 25 Aug 2025
      DateManager.longDateAbbrUS, // Aug 25, 2025
    ];

    for (var pattern in patterns) {
      try {
        return DateFormat(pattern, locale).parseStrict(dateString);
      } catch (_) {
        continue;
      }
    }

    return null; // parsing failed
  }
}
