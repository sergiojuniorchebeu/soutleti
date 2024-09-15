import 'package:agse2/screens/Enseignant/Appel.dart';
import 'package:agse2/screens/Enseignant/Discussions.dart';
import 'package:agse2/screens/Enseignant/HomePageView.dart';
import 'package:agse2/screens/Enseignant/Notes.dart';
import 'package:flutter/material.dart';


class HomeEnseignantPage extends StatefulWidget {
  const HomeEnseignantPage({super.key});

  @override
  State<HomeEnseignantPage> createState() => _HomeEnseignantPageState();
}

class _HomeEnseignantPageState extends State<HomeEnseignantPage> {
  int _curentIndex = 0;

  void changepage(int index){
    setState(() {
     _curentIndex = index;
    });
  }

  final List<Widget> _screens =[
    const HomePageView(),
    const DiscussionsEnseignant(),
    const Notes(),
    const AppelEnseignant()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_curentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: _curentIndex,
          onTap: changepage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Discussions"),
            BottomNavigationBarItem(icon: Icon(Icons.note_add), label: "Notes"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Faire appel"),
          ]
      ),
    );
  }
}
