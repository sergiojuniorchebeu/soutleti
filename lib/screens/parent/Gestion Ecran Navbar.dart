import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Login.dart';
import 'package:agse2/screens/parent/Assiduit%C3%A9.dart';
import 'package:agse2/screens/parent/Notes%20Enfant.dart';
import 'package:agse2/screens/parent/Profil%20enfant.dart';
import 'package:agse2/screens/parent/Scolarite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreensManage extends StatefulWidget {
  const ScreensManage({super.key});

  @override
  State<ScreensManage> createState() => _ScreensManageState();
}

class _ScreensManageState extends State<ScreensManage> {
  final List<Widget> _screens = [
    const EnfantProfile(),
    const Assiduite(),
    const Paiement(),
    NotesEnfant()
  ];

  int _currentIndex = 0;

  void _changeview(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          currentIndex: _currentIndex,
          onTap: _changeview,
          selectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profil"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar), label: "Assiduité"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Scolarité"),
            BottomNavigationBarItem(icon: Icon(Icons.note), label: "Notes"),
          ]),
    );
  }
}
