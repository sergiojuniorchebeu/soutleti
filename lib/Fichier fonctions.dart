import 'package:flutter/material.dart';


class Utilitaires{

  static styledetexte({double? taille, FontWeight? gras , Color? couleur}){
    return TextStyle(
      fontWeight: gras ?? FontWeight.normal,
      fontSize: taille ?? 14,
      color: couleur ?? Colors.black
    );
  }

  static listedrawer(IconData icone, String titre){
    return ListTile(
      leading: Icon(icone),
      title: Text(titre),
    );
  }
  static affichernom(String texte, double taille){
    return Text(
      texte,
      style: TextStyle(
        color: Colors.white,
        fontSize: taille,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static appbar(){
    return AppBar(
      backgroundColor: Colors.green[300],
      title: Text("AGSE", style: Utilitaires.styledetexte(couleur: Colors.white, gras:FontWeight.bold, taille: 26),),
      centerTitle: true,
    );
  }

}