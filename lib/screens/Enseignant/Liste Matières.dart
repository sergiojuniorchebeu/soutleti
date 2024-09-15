import 'package:agse2/screens/Enseignant/fiche%20de%20note.dart';
import 'package:flutter/material.dart';

import '../../Fichier fonctions.dart';

class ListeMatieres extends StatefulWidget {
  const ListeMatieres({super.key});

  @override
  State<ListeMatieres> createState() => _ListeMatieresState();
}

class _ListeMatieresState extends State<ListeMatieres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body:  Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Mes Matières",
                    style: Utilitaires.styledetexte(
                        taille: 20, gras: FontWeight.bold),
                  ),
                  const Text("____________________")
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("PCT"),
            trailing: Text("Coef : 4"),
            leading: Icon(Icons.book),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FicheDeNotes())),
          ),
          ListTile(
            title: Text("Maths"),
            trailing: Text("Coef : 4"),
            leading: Icon(Icons.book),
          ),

        ],
      ),
    );
  }
}
