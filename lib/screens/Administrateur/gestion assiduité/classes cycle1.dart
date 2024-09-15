import 'package:flutter/material.dart';
import 'package:agse2/Fichier%20fonctions.dart';
import 'fiche de presence.dart';


class PremierCyclePresence extends StatefulWidget {
  const PremierCyclePresence({super.key});

  @override
  State<PremierCyclePresence> createState() => _PremierCyclePresenceState();
}

class _PremierCyclePresenceState extends State<PremierCyclePresence> {
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
            trailing: const Text("Cliquez pour effectuer l'appel "),
            leading: const Icon(Icons.school),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const PriseDePresenceAdmin())),
          ),
          const ListTile(
            title: Text("3e A"),
            trailing: Text("Cliquez pour effectuer l'appel "),
            leading: Icon(Icons.school),
          ),
          const ListTile(
            title: Text("5e A"),
            trailing: Text("Cliquez pour effectuer l'appel "),
            leading: Icon(Icons.school),
          ),

        ],
      ),
    );
  }
}