import 'package:flutter/material.dart';

import '../../Fichier fonctions.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("AGSE", style: Utilitaires.styledetexte(couleur: Colors.white, gras:FontWeight.bold, taille: 26),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle, size: 35, color: Colors.white,))
          ],
        ),
    );
  }
}
