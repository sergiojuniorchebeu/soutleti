import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Enseignant/Liste%20Mati%C3%A8res.dart';
import 'package:flutter/material.dart';

class PremierCycle extends StatefulWidget {
  const PremierCycle({super.key});

  @override
  State<PremierCycle> createState() => _PremierCycleState();
}

class _PremierCycleState extends State<PremierCycle> {
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
            title: Text("3e C"),
            trailing: Text("Cliquez pour reporter vos notes"),
            leading: Icon(Icons.school),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ListeMatieres())),
          ),
          const ListTile(
            title: Text("3e A"),
            trailing: Text("Cliquez pour reporter vos notes"),
            leading: Icon(Icons.school),
          ),
          const ListTile(
            title: Text("5e A"),
            trailing: Text("Cliquez pour reporter vos notes"),
            leading: Icon(Icons.school),
          ),

        ],
      ),
    );
  }
}
