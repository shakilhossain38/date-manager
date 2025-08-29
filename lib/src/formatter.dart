import 'package:intl/intl.dart';

/// A simple and easy-to-use date formatting utility.
///
/// Provides numeric and textual formats, safe parsing, and relative time calculation.
class DateManager {
  DateManager._(); // private constructor

  // --------------------------
  // Numeric date formats
  // --------------------------
  /// Day-first, slash: 25/08/2025
  static const String shortDate = 'dd/MM/yyyy';

  /// Day-first, slash, 2-digit year: 25/08/25
  static const String shortDate2Digit = 'dd/MM/yy';

  /// US style, slash: 08/25/2025
  static const String shortDateUS = 'MM/dd/yyyy';

  /// US style, slash, 2-digit year: 08/25/25
  static const String shortDateUS2Digit = 'MM/dd/yy';

  /// ISO date (dash): 2025-09-27
  static const String isoDate = 'yyyy-MM-dd';

  /// ISO date (slash): 2025/09/27
  static const String isoDateSlash = 'yyyy/MM/dd';

  /// Day-first, dash: 25-08-2025
  static const String shortDateDash = 'dd-MM-yyyy';

  /// US style, dash: 08-25-2025
  static const String shortDateDashUS = 'MM-dd-yyyy';

  // --------------------------
  // Textual / written formats
  // --------------------------
  /// Full month, day-first: 25 August 2025
  static const String longDate = 'dd MMMM yyyy';

  /// Full month, US style: August 25, 2025
  static const String longDateUS = 'MMMM dd, yyyy';

  /// Abbreviated month, day-first: 25 Aug 2025
  static const String longDateAbbr = 'dd MMM yyyy';

  /// Abbreviated month, US style: Aug 25, 2025
  static const String longDateAbbrUS = 'MMM dd, yyyy';

  /// Full date with weekday: Friday, 25 August 2025
  static const String fullDate = 'EEEE, dd MMMM yyyy';

  // --------------------------
  // Time formats
  // --------------------------
  /// 24-hour format: 14:30
  static const String shortTime24 = 'HH:mm';

  /// 12-hour format: 02:30 PM
  static const String shortTime12 = 'hh:mm a';

  /// 24-hour format with seconds: 14:30:15
  static const String longTime24 = 'HH:mm:ss';

  /// 12-hour format with seconds: 02:30:15 PM
  static const String longTime12 = 'hh:mm:ss a';

  // --------------------------
  // Date + Time formats
  // --------------------------
  /// Day-first, 24-hour: 25/08/2025 14:30
  static const String dateTime24 = 'dd/MM/yyyy HH:mm';

  /// Day-first, 12-hour: 25/08/2025 02:30 PM
  static const String dateTime12 = 'dd/MM/yyyy hh:mm a';

  /// US style, 24-hour: 08/25/2025 14:30
  static const String dateTime24US = 'MM/dd/yyyy HH:mm';

  /// US style, 12-hour: 08/25/2025 02:30 PM
  static const String dateTime12US = 'MM/dd/yyyy hh:mm a';

  /// ISO, slash, 24-hour: 2025/08/25 14:30
  static const String dateTime24IsoSlash = 'yyyy/MM/dd HH:mm';

  /// ISO, slash, 12-hour: 2025/08/25 02:30 PM
  static const String dateTime12IsoSlash = 'yyyy/MM/dd hh:mm a';

  /// ISO, dash, 24-hour: 2025-08-25 14:30
  static const String dateTime24Iso = 'yyyy-MM-dd HH:mm';

  /// ISO, dash, 12-hour: 2025-08-25 02:30 PM
  static const String dateTime12Iso = 'yyyy-MM-dd hh:mm a';

  /// Full textual date, 24-hour with seconds: 25 August 2025 14:30:15
  static const String longDateTime24 = 'dd MMMM yyyy HH:mm:ss';

  /// Full textual date, 12-hour with seconds: 25 August 2025 02:30:15 PM
  static const String longDateTime12 = 'dd MMMM yyyy hh:mm:ss a';

  /// Short date + 24-hour time: 25/08/2025 14:30
  static const String shortDateTime24 = 'dd/MM/yyyy HH:mm';

  /// Short date + 12-hour time: 25/08/2025 02:30 PM
  static const String shortDateTime12 = 'dd/MM/yyyy hh:mm a';

  /// US style short date + 24-hour time: 08/25/2025 14:30
  static const String shortDateTime24US = 'MM/dd/yyyy HH:mm';

  /// US style short date + 12-hour time: 08/25/2025 02:30 PM
  static const String shortDateTime12US = 'MM/dd/yyyy hh:mm a';

  // --------------------------
  // Formatting functions
  // --------------------------

  /// Format a [DateTime] object using a [pattern].
  ///
  /// If formatting fails, returns ISO 8601 string.
  /// Optionally, specify a [locale] like 'en', 'fr', 'es'.
  static String format(DateTime date, String pattern, {String? locale}) {
    try {
      return DateFormat(pattern, locale).format(date);
    } catch (e) {
      return date.toIso8601String();
    }
  }

  /// Returns a human-readable relative time string for past dates.
  ///
  /// Example: "2 hours ago", "3 days ago"
  static String timeAgo(DateTime date, {DateTime? reference}) {
    reference ??= DateTime.now();
    Duration diff = reference.difference(date);
    if (diff.isNegative) return 'in the future';
    if (diff.inSeconds < 60) return '${diff.inSeconds} seconds ago';
    if (diff.inMinutes < 60) return '${diff.inMinutes} minutes ago';
    if (diff.inHours < 24) return '${diff.inHours} hours ago';
    if (diff.inDays < 7) return '${diff.inDays} days ago';
    if (diff.inDays < 30) return '${(diff.inDays / 7).floor()} weeks ago';
    if (diff.inDays < 365) return '${(diff.inDays / 30).floor()} months ago';
    return '${(diff.inDays / 365).floor()} years ago';
  }

  /// Returns a human-readable relative time string for future dates.
  ///
  /// Example: "2 hours later", "3 days later"
  static String timeLater(DateTime date, {DateTime? reference}) {
    reference ??= DateTime.now();
    Duration diff = date.difference(reference);
    if (diff.isNegative) return 'already passed';
    if (diff.inSeconds < 60) return '${diff.inSeconds} seconds later';
    if (diff.inMinutes < 60) return '${diff.inMinutes} minutes later';
    if (diff.inHours < 24) return '${diff.inHours} hours later';
    if (diff.inDays < 7) return '${diff.inDays} days later';
    if (diff.inDays < 30) return '${(diff.inDays / 7).floor()} weeks later';
    if (diff.inDays < 365) return '${(diff.inDays / 30).floor()} months later';
    return '${(diff.inDays / 365).floor()} years later';
  }
}
