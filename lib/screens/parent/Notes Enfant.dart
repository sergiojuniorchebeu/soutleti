import 'package:flutter/material.dart';

class NotesEnfant extends StatefulWidget {
  const NotesEnfant({super.key});

  @override
  State<NotesEnfant> createState() => _NotesEnfantState();
}

class _NotesEnfantState extends State<NotesEnfant> {
  final List<Map<String, dynamic>> subjects = [
    {"subject": "Mathématiques", "coefficient": 4, "grade": 15.5},
    {"subject": "Physique", "coefficient": 3, "grade": 14.0},
    {"subject": "Informatique", "coefficient": 5, "grade": 16.7},
  ];

  String getAppreciation(double grade) {
    if (grade >= 16) {
      return "Très Bien";
    } else if (grade >= 14) {
      return "Bien";
    } else if (grade >= 10) {
      return "Passable";
    } else {
      return "Insuffisant";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matières, Coefficients et Notes"),
      ),
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
                  'Nom de la matière',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Coefficient',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Note',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Appréciation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Action',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
            rows: subjects
                .map(
                  (subject) => DataRow(
                    cells: [
                      DataCell(Text(subject['subject'])),
                      DataCell(Text(subject['coefficient'].toString())),
                      DataCell(Text(subject['grade'].toString())),
                      DataCell(Text(getAppreciation(subject['grade']))),
                      DataCell(
                        ElevatedButton(
                          onPressed: () {
                            // Logique pour l'action Chatter
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text("Chatter"),
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
