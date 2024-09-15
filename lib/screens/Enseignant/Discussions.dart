import 'package:flutter/material.dart';

import '../../Fichier fonctions.dart';


class DiscussionsEnseignant extends StatefulWidget {
  const DiscussionsEnseignant({super.key});

  @override
  State<DiscussionsEnseignant> createState() => _DiscussionsEnseignantState();
}

class _DiscussionsEnseignantState extends State<DiscussionsEnseignant> {
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
                    "Messagerie",
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
          const ListTile(
            title: Text("Notes de Français mise à jour"),
            trailing: Text("12 h 30"),
            leading: Icon(Icons.notifications),
          ),
          const ListTile(
            title: Text("Notes de Français mise à jour"),
            trailing: Text("12 h 30"),
            leading: Icon(Icons.notifications),
          ),

        ],
      ),
    );
  }
}
