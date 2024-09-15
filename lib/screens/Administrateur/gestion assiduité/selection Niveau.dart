import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Administrateur/gestion%20notes/Classes%20cycle%201.dart';
import 'package:flutter/material.dart';

import 'classes cycle2.dart';

class SelectionNiveauAdmin extends StatefulWidget {
  const SelectionNiveauAdmin({super.key});

  @override
  State<SelectionNiveauAdmin> createState() => _SelectionNiveauAdminState();
}

class _SelectionNiveauAdminState extends State<SelectionNiveauAdmin> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PremierCycleAdmin()));
                  },
                ),
                const SizedBox(height: 30,),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: Text("Second cycle", style: Utilitaires.styledetexte(taille: 20, gras: FontWeight.bold),),
                  subtitle: const Text("Cliquer pour selectionner"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondCycleAdmin()));
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
