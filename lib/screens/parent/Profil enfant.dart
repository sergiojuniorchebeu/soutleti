import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';


class EnfantProfile extends StatelessWidget {
  const EnfantProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12,),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asssets/img/user.png'),
              ),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8, left: 8, top: 8),
              child: Row(
                children: [
                  Text("Nom : ", style: Utilitaires.styledetexte(taille: 25),),
                  Text("Yantchop" ,style: Utilitaires.styledetexte(taille: 25),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8, left: 8, top: 8),
              child: Row(
                children: [
                  Text("Prenom : ", style: Utilitaires.styledetexte(taille: 25),),
                  Text("Leticia" ,style: Utilitaires.styledetexte(taille: 25),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8, left: 8, top: 8),
              child: Row(
                children: [
                  Text("Titulaire: ", style: Utilitaires.styledetexte(taille: 25),),
                  Text("M Motaze Brice" ,style: Utilitaires.styledetexte(taille: 25),)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
