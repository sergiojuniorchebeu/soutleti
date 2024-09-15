import 'package:agse2/screens/Administrateur/gestion%20notes/fiche%20de%20note.dart';
import 'package:agse2/screens/Enseignant/fiche%20de%20note.dart';
import 'package:flutter/material.dart';

import '../../../Fichier fonctions.dart';


class ListeMatieresAdmin extends StatefulWidget {
  const ListeMatieresAdmin({super.key});

  @override
  State<ListeMatieresAdmin> createState() => _ListeMatieresAdminState();
}

class _ListeMatieresAdminState extends State<ListeMatieresAdmin> {
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
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FicheDeNotesAdmin())),
          ),
          const ListTile(
            title: Text("Maths"),
            trailing: Text("Coef : 4"),
            leading: Icon(Icons.book),
          ),

        ],
      ),
    );
  }
}
