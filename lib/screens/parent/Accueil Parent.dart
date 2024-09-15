import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/parent/Mes%20Enfants.dart';
import 'package:agse2/screens/parent/Notifiactions.dart';
import 'package:agse2/screens/parent/profile.dart';
import 'package:flutter/material.dart';

import 'messagerieParent.dart';

class AccueilParent extends StatelessWidget {
  const AccueilParent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Utilitaires.affichernom("Leticia",22),
                  Utilitaires.affichernom("Yantchop",18),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfilParent()));
              },
              child: Utilitaires.listedrawer(Icons.account_circle, "Mon Profil"),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationParent()));
              },
              child: Utilitaires.listedrawer(Icons.notifications, "Notifications"),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListeEnfants()));
              },
              child: Utilitaires.listedrawer(Icons.group, "Mes Enfants"),
            ),
            GestureDetector(
              onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>const messagerieParent())),
              child: Utilitaires.listedrawer(Icons.message, "Messagerie"),
    )


          ],
        ),
      ),
    );
  }
}
