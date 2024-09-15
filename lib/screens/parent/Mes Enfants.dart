import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/parent/Gestion%20Ecran%20Navbar.dart';
import 'package:agse2/screens/parent/Profil%20enfant.dart';
import 'package:flutter/material.dart';

class ListeEnfants extends StatelessWidget {
  const ListeEnfants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Utilitaires.appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Center(
              child: Column(
                children: [
                  Text(
                    "Mes Enfants",
                    style: Utilitaires.styledetexte(
                        taille: 20, gras: FontWeight.bold),
                  ),
                  const Text("____________________")
                ],
              ),
            ),
            ListTile(
              title: Text("Leticia Yantchop"),
              trailing: Text("Terminale C"),
              leading: Icon(Icons.account_circle),
              subtitle: Text("M Chebeu Sergio"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreensManage()));
              },
            ),
            ListTile(
              title: Text("Leticia Yantchop"),
              trailing: Text("Terminale C"),
              leading: Icon(Icons.account_circle),
              subtitle: Text("M Chebeu Sergio"),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EnfantProfile()));
              },
            ),
          ],
        ),
      ),
    );

  }
}
