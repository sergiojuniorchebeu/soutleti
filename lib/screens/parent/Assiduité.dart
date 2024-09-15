import 'package:flutter/material.dart';

class Assiduite extends StatefulWidget {

  const Assiduite({super.key});

  @override
  State<Assiduite> createState() => _AssiduiteState();
}

class _AssiduiteState extends State<Assiduite> {
  final List<Map<String, String>> history = [
    {"date": "2024-08-17", "time": "08:00", "status": "Présent"},
    {"date": "2024-08-17", "time": "10:00", "status": "Absent"},
    {"date": "2024-08-18", "time": "14:00", "status": "Présent"},
    {"date": "2024-08-18", "time": "14:00", "status": "Présent"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            columns: const [
              DataColumn(
                label: Text(
                  'Jour',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Heure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Statut',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
            rows: history
                .map(
                  (entry) => DataRow(
                cells: [
                  DataCell(Text(entry['date']!)),
                  DataCell(Text(entry['time']!)),
                  DataCell(
                    Text(
                      entry['status']!,
                      style: TextStyle(
                        color: entry['status'] == "Présent"
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}
