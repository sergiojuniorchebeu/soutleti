import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class ManageClassesPage extends StatelessWidget {
  const ManageClassesPage({super.key});

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
                  title: 'Ajouter',
                  icon: Icons.add,
                  onPressed: () {
                    // Action pour Ajouter une classe
                    print('Ajouter classe pressed');
                  },
                ),
                ActionCard(
                  title: 'Modifier',
                  icon: Icons.edit,
                  onPressed: () {
                    // Action pour Modifier une classe
                    print('Modifier classe pressed');
                  },
                ),
                ActionCard(
                  title: 'Supprimer',
                  icon: Icons.delete,
                  onPressed: () {
                    // Action pour Supprimer une classe
                    print('Supprimer classe pressed');
                  },
                ),
              ],
            ),
          ),
          // Liste des Classes en bas
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Nombre de classes à afficher
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.class_),
                  title: Text('Classe ${index + 1}'),
                  subtitle: Text('Détails de la classe ${index + 1}'),
                  trailing: PopupMenuButton<String>(
                    onSelected: (value) {
                      switch (value) {
                        case 'View':
                          print('Voir classe ${index + 1}');
                          break;
                        case 'Edit':
                          print('Éditer classe ${index + 1}');
                          break;
                        case 'Delete':
                          print('Supprimer classe ${index + 1}');
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          value: 'View',
                          child: Text('Voir'),
                        ),
                        PopupMenuItem(
                          value: 'Edit',
                          child: Text('Éditer'),
                        ),
                        PopupMenuItem(
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
