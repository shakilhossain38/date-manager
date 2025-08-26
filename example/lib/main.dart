import 'package:date_manager/date_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("DateFormatter Example")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Numeric Formats:'),
                Text(
                  'Default Short Date: ${DateManager.format(DateTime.now(), DateManager.shortDate)}',
                ),
                Text(
                  'US Short Date: ${DateManager.format(DateTime.now(), DateManager.shortDateUS)}',
                ),
                Text(
                  'ISO Date: ${DateManager.format(DateTime.now(), DateManager.isoDate)}',
                ),
                Text(
                  'Dash Date: ${DateManager.format(DateTime.now(), DateManager.shortDateDash)}',
                ),
                Text(
                  'Dash US Date: ${DateManager.format(DateTime.now(), DateManager.shortDateDashUS)}',
                ),
                const SizedBox(height: 20),

                Text('Textual Formats:'),
                Text(
                  'Long Date: ${DateManager.format(DateTime.now(), DateManager.longDate)}',
                ),
                Text(
                  'Long Date US: ${DateManager.format(DateTime.now(), DateManager.longDateUS)}',
                ),
                Text(
                  'Abbreviated: ${DateManager.format(DateTime.now(), DateManager.longDateAbbr)}',
                ),
                Text(
                  'Abbreviated US: ${DateManager.format(DateTime.now(), DateManager.longDateAbbrUS)}',
                ),
                Text(
                  'Full Date: ${DateManager.format(DateTime.now(), DateManager.fullDate)}',
                ),
                const SizedBox(height: 20),

                Text(
                  'Time Ago: ${DateManager.timeAgo(DateTime.now().subtract(const Duration(days: 1)))}',
                ),
                Text(
                  'Time Later: ${DateManager.timeLater(DateTime.now().add(const Duration(days: 3)))}',
                ),
                const SizedBox(height: 20),

                Text('Parsed ISO Date: ${DateParser.parse("2025/08/25")}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
