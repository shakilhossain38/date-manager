## [0.0.3] - 2025-08-25
### Added
- New ISO date formats:
  - `isoDateSlash` → `yyyy/MM/dd`
  - `dateTime24IsoSlash` → `yyyy/MM/dd HH:mm`
  - `dateTime12IsoSlash` → `yyyy/MM/dd hh:mm a`
  - `dateTime24Iso` → `yyyy-MM-dd HH:mm`
  - `dateTime12Iso` → `yyyy-MM-dd hh:mm a`
- Short date + time formats:
  - `shortDateTime24` → 25/08/2025 14:30
  - `shortDateTime12` → 25/08/2025 02:30 PM
  - `shortDateTime24US` → 08/25/2025 14:30
  - `shortDateTime12US` → 08/25/2025 02:30 PM
- All new date + time formats are now demonstrated in the example app.

## [0.0.2] - 2025-08-25
### Fixed
- Dangling library doc comment in `lib/src/parser.dart`.
- Applied Dart formatting to all source files.

## [0.0.1] - 2025-08-25
### Added
- Initial release of `date_manager`.
- Predefined numeric date formats: `shortDate`, `shortDate2Digit`, `shortDateUS`, `shortDateUS2Digit`, `isoDate`, `shortDateDash`, `shortDateDashUS`.
- Predefined textual/written date formats: `longDate`, `longDateUS`, `longDateAbbr`, `longDateAbbrUS`, `fullDate`.
- Time formats: `shortTime24`, `shortTime12`, `longTime24`, `longTime12`.
- Date + time formats: `dateTime24`, `dateTime12`, `dateTime24US`, `dateTime12US`, `longDateTime24`, `longDateTime12`.
- Human-readable relative time functions:
  - `DateManager.timeAgo()` for past dates.
  - `DateManager.timeLater()` for future dates.
- Fully compatible with Flutter and pure Dart.
