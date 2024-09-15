import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Enseignant/classes%20niveaux%201.dart';
import 'package:flutter/material.dart';

import 'Classes niv 2.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Niveaux d'études", style: Utilitaires.styledetexte(taille: 30, gras: FontWeight.bold, couleur: Colors.green),),
            Padding(padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.child_care_rounded),
                    title: Text("Premier cycle", style: Utilitaires.styledetexte(taille: 20, gras: FontWeight.bold),),
                    subtitle: const Text("Cliquer pour selectionner"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PremierCycle()));
                    },
                  ),
                  const SizedBox(height: 30,),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: Text("Second cycle", style: Utilitaires.styledetexte(taille: 20, gras: FontWeight.bold),),
                    subtitle: const Text("Cliquer pour selectionner"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondCycle()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),

    );
  }
}
