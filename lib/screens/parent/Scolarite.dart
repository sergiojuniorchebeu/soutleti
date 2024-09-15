import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/parent/formulaire%20paiement.dart';
import 'package:flutter/material.dart';


class Paiement extends StatefulWidget {
  const Paiement({super.key});

  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              shadowColor: Colors.green,
              margin: const EdgeInsets.all(20), // Marges autour de la carte
              child: Column(
                children: [
                  ListTile(
                    title: Text('Première tranche',
                      style: Utilitaires.styledetexte(gras: FontWeight.bold, taille: 20, couleur: Colors.green),),
                    subtitle : Column(
                      children: [
                        Row(
                          children: [
                            Text("Montant : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("150 000 FCFA" ,style: Utilitaires.styledetexte(taille: 20),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Statut : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("Non payé" ,style: Utilitaires.styledetexte(taille: 20, couleur: Colors.red),)
                          ],
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: (){
                       Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> FormulairePaiement())
                        );
                      },
                      child:
                      Text(
                        'Payer',
                        style: Utilitaires.styledetexte(couleur: Colors.white, gras: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              shadowColor: Colors.green,
              margin: const EdgeInsets.all(20), // Marges autour de la carte
              child: Column(
                children: [
                  ListTile(
                    title: Text('Deuxieme tranche',
                      style: Utilitaires.styledetexte(gras: FontWeight.bold, taille: 20, couleur: Colors.green),),
                    subtitle : Column(
                      children: [
                        Row(
                          children: [
                            Text("Montant : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("150 000 FCFA" ,style: Utilitaires.styledetexte(taille: 20),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Statut : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("Non payé" ,style: Utilitaires.styledetexte(taille: 20, couleur: Colors.red),)
                          ],
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const FormulairePaiement())
                        );
                      },
                      child:
                      Text(
                        'Payer',
                        style: Utilitaires.styledetexte(couleur: Colors.white, gras: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              shadowColor: Colors.green,
              margin: const EdgeInsets.all(20), // Marges autour de la carte
              child: Column(
                children: [
                  ListTile(
                    title: Text('Troisieme tranche',
                      style: Utilitaires.styledetexte(gras: FontWeight.bold, taille: 20, couleur: Colors.green),),
                    subtitle : Column(
                      children: [
                        Row(
                          children: [
                            Text("Montant : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("150 000 FCFA" ,style: Utilitaires.styledetexte(taille: 20),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Statut : ", style: Utilitaires.styledetexte(taille: 20),),
                            const SizedBox(width: 7,),
                            Text("Non payé" ,style: Utilitaires.styledetexte(taille: 20, couleur: Colors.red),)
                          ],
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const FormulairePaiement())
                        );
                      },
                      child:
                      Text(
                        'Payer',
                        style: Utilitaires.styledetexte(couleur: Colors.white, gras: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
