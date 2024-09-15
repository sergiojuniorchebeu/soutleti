import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class FicheDeNotesAdmin extends StatefulWidget {
  const FicheDeNotesAdmin({super.key});

  @override
  _FicheDeNotesAdminState createState() => _FicheDeNotesAdminState();
}

class _FicheDeNotesAdminState extends State<FicheDeNotesAdmin> {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "note": 0.0, "Appréciation": ""},
    {"name": "Bob", "note": 0.0, "Appréciation": ""},
    {"name": "Charlie", "note": 0.0, "Appréciation": ""},
  ];

  /*void _calculateTotal(int index) {
    double note1 = students[index]['note1'];
    double note2 = students[index]['note2'];
    double total = (note1 * 0.4) + (note2 * 0.6);

    setState(() {
      students[index]['total'] = total;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: Column(
        children: [
          Padding(
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
                      'Nom de l\'étudiant',
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
                      'Appreciation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
                rows: students
                    .asMap()
                    .entries
                    .map(
                      (entry) => DataRow(
                    cells: [
                      DataCell(Text(entry.value['name'])),
                      DataCell(
                        TextFormField(
                          initialValue: entry.value['note'].toString(),
                          keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          initialValue: entry.value['Appréciation'].toString(),
                          keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
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
    );
  }
}

