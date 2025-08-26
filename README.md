# date_manager

A lightweight and easy-to-use Dart package for **date formatting** and **relative time calculation**.  
Supports **common numeric and textual date formats**, along with human-readable past/future time strings.

---

## Features

- Predefined **numeric date formats** (US/International)
- Predefined **textual date formats** (full month, abbreviated month, weekdays)
- **Time formats**: 24-hour and 12-hour
- Combine **date + time formats**
- Human-readable **relative time**:
  - `timeAgo()` → "3 hours ago", "2 days ago"
  - `timeLater()` → "in 2 hours", "3 days later"
- Works in both **Flutter** and **Dart**

---

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  date_manager: ^0.0.1
```

# For Flutter projects
flutter pub get

# For pure Dart projects
dart pub get


## Predefined Formats

### Numeric
- `shortDate` → 25/08/2025  
- `shortDate2Digit` → 25/08/25  
- `shortDateUS` → 08/25/2025  
- `shortDateUS2Digit` → 08/25/25  
- `isoDate` → 2025/08/25  
- `shortDateDash` → 25-08-2025  
- `shortDateDashUS` → 08-25-2025  

### Textual / Written
- `longDate` → 25 August 2025  
- `longDateUS` → August 25, 2025  
- `longDateAbbr` → 25 Aug 2025  
- `longDateAbbrUS` → Aug 25, 2025  
- `fullDate` → Friday, 25 August 2025  

### Time
- `shortTime24` → 14:30  
- `shortTime12` → 02:30 PM  
- `longTime24` → 14:30:15  
- `longTime12` → 02:30:15 PM  

### Date + Time
- `dateTime24` → 25/08/2025 14:30  
- `dateTime12` → 25/08/2025 02:30 PM  
- `dateTime24US` → 08/25/2025 14:30  
- `dateTime12US` → 08/25/2025 02:30 PM  
- `longDateTime24` → 25 August 2025 14:30:15  
- `longDateTime12` → 25 August 2025 02:30:15 PM

## Usage (Flutter)

```dart
import 'package:flutter/material.dart';
import 'package:date_manager/date_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DateManager Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Current DateTime: $now'),
                const SizedBox(height: 10),

                // Numeric Formats
                Text('Numeric Formats:'),
                Text('shortDate: ${DateManager.format(now, DateManager.shortDate)}'),
                Text('shortDate2Digit: ${DateManager.format(now, DateManager.shortDate2Digit)}'),
                Text('shortDateUS: ${DateManager.format(now, DateManager.shortDateUS)}'),
                Text('shortDateUS2Digit: ${DateManager.format(now, DateManager.shortDateUS2Digit)}'),
                Text('isoDate: ${DateManager.format(now, DateManager.isoDate)}'),
                Text('shortDateDash: ${DateManager.format(now, DateManager.shortDateDash)}'),
                Text('shortDateDashUS: ${DateManager.format(now, DateManager.shortDateDashUS)}'),
                const SizedBox(height: 10),

                // Textual Formats
                Text('Textual Formats:'),
                Text('longDate: ${DateManager.format(now, DateManager.longDate)}'),
                Text('longDateUS: ${DateManager.format(now, DateManager.longDateUS)}'),
                Text('longDateAbbr: ${DateManager.format(now, DateManager.longDateAbbr)}'),
                Text('longDateAbbrUS: ${DateManager.format(now, DateManager.longDateAbbrUS)}'),
                Text('fullDate: ${DateManager.format(now, DateManager.fullDate)}'),
                const SizedBox(height: 10),

                // Time Formats
                Text('Time Formats:'),
                Text('shortTime24: ${DateManager.format(now, DateManager.shortTime24)}'),
                Text('shortTime12: ${DateManager.format(now, DateManager.shortTime12)}'),
                Text('longTime24: ${DateManager.format(now, DateManager.longTime24)}'),
                Text('longTime12: ${DateManager.format(now, DateManager.longTime12)}'),
                const SizedBox(height: 10),

                // Date + Time
                Text('Date + Time Formats:'),
                Text('dateTime24: ${DateManager.format(now, DateManager.dateTime24)}'),
                Text('dateTime12: ${DateManager.format(now, DateManager.dateTime12)}'),
                Text('dateTime24US: ${DateManager.format(now, DateManager.dateTime24US)}'),
                Text('dateTime12US: ${DateManager.format(now, DateManager.dateTime12US)}'),
                Text('longDateTime24: ${DateManager.format(now, DateManager.longDateTime24)}'),
                Text('longDateTime12: ${DateManager.format(now, DateManager.longDateTime12)}'),
                const SizedBox(height: 10),

                // Relative Time
                Text('Relative Time:'),
                Text('Time ago: ${DateManager.timeAgo(now.subtract(const Duration(days: 1)))}'),
                Text('Time later: ${DateManager.timeLater(now.add(const Duration(hours: 5)))}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.





