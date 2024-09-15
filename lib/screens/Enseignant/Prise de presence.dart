import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class  PriseDePresence extends StatefulWidget {
  const PriseDePresence({super.key});

  @override
  _PriseDePresenceState createState() => _PriseDePresenceState();
}

class _PriseDePresenceState extends State<PriseDePresence> {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "present": false, "abscent": false},
    {"name": "Bob", "present": false, "abscent": false},
    {"name": "Charlie", "present": false, "abscent": false},
  ];

  DateTime timestamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Utilitaires.appbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Nom de l\'étudiant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Jour et Heure',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Présent',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Abscent',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                  rows: students
                      .map(
                        (student) => DataRow(
                      cells: [
                        DataCell(Text(student['name'])),
                        DataCell(Text(
                            "${timestamp.toLocal()}".split('.')[0])),
                        DataCell(
                          Checkbox(
                            value: student['present'],
                            onChanged: (bool? value) {
                              setState(() {
                                student['present'] = value ?? false;
                              });
                            },
                            activeColor: Colors.green,
                          ),
                        ),
                        DataCell(
                          Checkbox(
                            value: student['abscent'],
                            onChanged: (bool? value2) {
                              setState(() {
                                student['abscent'] = value2 ?? false;
                              });
                            },
                            activeColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour sauvegarder la présence
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Sauvegarder",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
