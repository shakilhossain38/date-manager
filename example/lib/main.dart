import 'package:date_manager/date_manager.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(title: const Text("DateManager Example")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Current DateTime: $now'),
                const SizedBox(height: 10),

                // Numeric Formats
                Text(
                  'Numeric Formats:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'shortDate: ${DateManager.format(now, DateManager.shortDate)}',
                ),
                Text(
                  'shortDate2Digit: ${DateManager.format(now, DateManager.shortDate2Digit)}',
                ),
                Text(
                  'shortDateUS: ${DateManager.format(now, DateManager.shortDateUS)}',
                ),
                Text(
                  'shortDateUS2Digit: ${DateManager.format(now, DateManager.shortDateUS2Digit)}',
                ),
                Text(
                  'isoDate: ${DateManager.format(now, DateManager.isoDate)}',
                ),
                Text(
                  'isoDateSlash: ${DateManager.format(now, DateManager.isoDateSlash)}',
                ),
                Text(
                  'shortDateDash: ${DateManager.format(now, DateManager.shortDateDash)}',
                ),
                Text(
                  'shortDateDashUS: ${DateManager.format(now, DateManager.shortDateDashUS)}',
                ),
                const SizedBox(height: 10),

                // Textual Formats
                Text(
                  'Textual Formats:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'longDate: ${DateManager.format(now, DateManager.longDate)}',
                ),
                Text(
                  'longDateUS: ${DateManager.format(now, DateManager.longDateUS)}',
                ),
                Text(
                  'longDateAbbr: ${DateManager.format(now, DateManager.longDateAbbr)}',
                ),
                Text(
                  'longDateAbbrUS: ${DateManager.format(now, DateManager.longDateAbbrUS)}',
                ),
                Text(
                  'fullDate: ${DateManager.format(now, DateManager.fullDate)}',
                ),
                const SizedBox(height: 10),

                // Time Formats
                Text(
                  'Time Formats:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'shortTime24: ${DateManager.format(now, DateManager.shortTime24)}',
                ),
                Text(
                  'shortTime12: ${DateManager.format(now, DateManager.shortTime12)}',
                ),
                Text(
                  'longTime24: ${DateManager.format(now, DateManager.longTime24)}',
                ),
                Text(
                  'longTime12: ${DateManager.format(now, DateManager.longTime12)}',
                ),
                const SizedBox(height: 10),

                // Date + Time Formats
                Text(
                  'Date + Time Formats:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'dateTime24: ${DateManager.format(now, DateManager.dateTime24)}',
                ),
                Text(
                  'dateTime12: ${DateManager.format(now, DateManager.dateTime12)}',
                ),
                Text(
                  'dateTime24US: ${DateManager.format(now, DateManager.dateTime24US)}',
                ),
                Text(
                  'dateTime12US: ${DateManager.format(now, DateManager.dateTime12US)}',
                ),
                Text(
                  'dateTime24IsoSlash: ${DateManager.format(now, DateManager.dateTime24IsoSlash)}',
                ),
                Text(
                  'dateTime12IsoSlash: ${DateManager.format(now, DateManager.dateTime12IsoSlash)}',
                ),
                Text(
                  'dateTime24Iso: ${DateManager.format(now, DateManager.dateTime24Iso)}',
                ),
                Text(
                  'dateTime12Iso: ${DateManager.format(now, DateManager.dateTime12Iso)}',
                ),
                Text(
                  'longDateTime24: ${DateManager.format(now, DateManager.longDateTime24)}',
                ),
                Text(
                  'longDateTime12: ${DateManager.format(now, DateManager.longDateTime12)}',
                ),
                const SizedBox(height: 10),

                // Relative Time
                Text(
                  'Relative Time:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Time ago: ${DateManager.timeAgo(now.subtract(const Duration(days: 1)))}',
                ),
                Text(
                  'Time later: ${DateManager.timeLater(now.add(const Duration(hours: 5)))}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
