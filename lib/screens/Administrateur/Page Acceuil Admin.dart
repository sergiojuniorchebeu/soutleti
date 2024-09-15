import 'package:agse2/Fichier%20fonctions.dart';
import 'package:agse2/screens/Administrateur/gestion%20notes/Selection%20niveau.dart';
import 'package:flutter/material.dart';
import 'Gerer anonces.dart';
import 'Gerer classes.dart';
import 'Gestion Scorite.dart';
import 'gerer compte utilisateur.dart';
import 'gestion annonces.dart';
import 'gestion assiduité/selection Niveau.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text(
          "AGSE",
          style: Utilitaires.styledetexte(
              couleur: Colors.white, gras: FontWeight.bold, taille: 26),
        ),
        centerTitle: true,
      ),
      drawer: SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            DashboardCard(
              title: 'Gérer Annonces',
              icone: Icons.notifications,
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnnouncementManagementPage()));
              },
            ),
            DashboardCard(
              title: 'Gérer Comptes utilisateurs',
              icone: Icons.people,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ManageUsersPage()));
              },
            ),
            DashboardCard(
              title: 'Gérer Suivi Paiement',
              icone: Icons.payment,
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const GestionScolariteAdmin()));
              },
            ),
            DashboardCard(
              title: 'Gérer Classe',
              icone: Icons.class_,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ManageClassesPage()));
              },
            ),
            DashboardCard(
              title: 'Gérer Présence',
              icone: Icons.check_circle,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SelectionNiveauAdmin()));
              },
            ),
            DashboardCard(
              title: 'Gérer Notes',
              icone: Icons.grade,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SelectionNiveauNotes()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Leticia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Administrateur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Profile',
              style: Utilitaires.styledetexte(gras: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Messagerie',
              style: Utilitaires.styledetexte(gras: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              'Deconnexion',
              style: Utilitaires.styledetexte(
                  couleur: Colors.red, gras: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icone;
  final VoidCallback onPressed;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icone,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icone, color: Colors.green, size: 50),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
