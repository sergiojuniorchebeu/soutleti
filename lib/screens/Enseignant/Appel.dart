import 'package:agse2/screens/Enseignant/Classes%20Niv1%20appel.dart';
import 'package:agse2/screens/Enseignant/Classes%20niv2%20appel.dart';
import 'package:flutter/material.dart';

import '../../Fichier fonctions.dart';


class AppelEnseignant extends StatefulWidget {
  const AppelEnseignant({super.key});

  @override
  State<AppelEnseignant> createState() => _AppelEnseignantState();
}

class _AppelEnseignantState extends State<AppelEnseignant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PremierCycleAppel()));
                  },
                ),
                const SizedBox(height: 30,),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: Text("Second cycle", style: Utilitaires.styledetexte(taille: 20, gras: FontWeight.bold),),
                  subtitle: const Text("Cliquer pour selectionner"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondCycleAppel()));
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
