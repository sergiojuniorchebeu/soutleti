import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class GestionScolariteAdmin extends StatelessWidget {
  const GestionScolariteAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: Column(
        children: [
          // Grandes Actions en haut
          Container(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: [
                ActionCard(
                  title: 'Enregister Un Paiement',
                  icon: Icons.add,
                  onPressed: () {
                    // Action pour Ajouter un utilisateur
                    print('Ajouter utilisateur pressed');
                  },
                ),
                ActionCard(
                  title: 'Liste ',
                  icon: Icons.remove_red_eye_sharp,
                  onPressed: () {
                    // Action pour Supprimer un utilisateur
                    print('Supprimer utilisateur pressed');
                  },
                ),
              ],
            ),
          ),
          // Liste des Utilisateurs en bas
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Nombre d'utilisateurs à afficher
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text('Utilisateur ${index + 1}'),
                  subtitle: Text('Détails de l\'utilisateur ${index + 1}'),
                  trailing: PopupMenuButton<String>(
                    onSelected: (value) {
                      switch (value) {
                        case 'View':
                          print('Voir utilisateur ${index + 1}');
                          break;
                        case 'Edit':
                          print('Éditer utilisateur ${index + 1}');
                          break;
                        case 'Delete':
                          print('Supprimer utilisateur ${index + 1}');
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                          value: 'View',
                          child: Text('Voir'),
                        ),
                        const PopupMenuItem(
                          value: 'Delete',
                          child: Text('Supprimer'),
                        ),
                      ];
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const ActionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 40),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
