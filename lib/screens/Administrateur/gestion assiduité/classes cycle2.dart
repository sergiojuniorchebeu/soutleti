import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

import 'fiche de presence.dart';

class SecondCycleAdmin extends StatefulWidget {
  const SecondCycleAdmin({super.key});

  @override
  State<SecondCycleAdmin> createState() => _SecondCycleAdminState();
}

class _SecondCycleAdminState extends State<SecondCycleAdmin> {
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
                    "Mes Classes du Second Cycle",
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
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PriseDePresenceAdmin()));
            },
            title: Text("Tle C"),
            trailing: Text("Cliquez pour effectuer l'appel"),
            leading: Icon(Icons.school),
          ),
          const ListTile(
            title: Text("2nd D"),
            trailing: Text("Cliquez pour effectuer l'appel"),
            leading: Icon(Icons.school),
          ),
          const ListTile(
            title: Text("Tle A"),
            trailing: Text("Cliquez pour effectuer l'appel"),
            leading: Icon(Icons.school),
          ),

        ],
      ),
    );
  }
}
