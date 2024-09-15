import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Enseignant/Prise%20de%20presence.dart';
import 'package:flutter/material.dart';


class PremierCycleAppel extends StatefulWidget {
  const PremierCycleAppel({super.key});

  @override
  State<PremierCycleAppel> createState() => _PremierCycleAppelState();
}

class _PremierCycleAppelState extends State<PremierCycleAppel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Mes Classes du premier Cycle",
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
            title: const Text("3e C"),
            trailing: const Text("Cliquez pour effectuer l'appel"),
            leading: const Icon(Icons.school),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PriseDePresence()));
            },
          ),
          const ListTile(
            title: Text("3e A"),
            trailing: Text("Cliquez pour effectuer l'appel"),
            leading: Icon(Icons.school),
          ),
          const ListTile(
            title: Text("5e A"),
            trailing: Text("Cliquez pour effectuer l'appel"),
            leading: Icon(Icons.school),
          ),

        ],
      ),
    );
  }
}
