import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class NotificationParent extends StatefulWidget {
  const NotificationParent({super.key});

  @override
  State<NotificationParent> createState() => _NotificationParentState();
}

class _NotificationParentState extends State<NotificationParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Notifications",
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
      ),
    );
  }
}
