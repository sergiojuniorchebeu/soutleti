import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class ManageAdsPage extends StatelessWidget {
  const ManageAdsPage({super.key});

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
                  title: 'Modifier',
                  icon: Icons.edit,
                  onPressed: () {
                    // Action pour Modifier
                  },
                ),
                ActionCard(
                  title: 'Publier',
                  icon: Icons.publish,
                  onPressed: () {
                    // Action pour Publier

                  },
                ),
                ActionCard(
                  title: 'Supprimer',
                  icon: Icons.delete,
                  onPressed: () {
                    // Action pour Supprimer

                  },
                ),
              ],
            ),
          ),
          // Annonces Récentes en bas
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Nombre d'annonces récentes
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Annonce ${index + 1}'),
                  subtitle: Text('Détails de l\'annonce ${index + 1}'),
                  //trailing: const Icon(Icons.more_vert),
                  onTap: () {
                    // Action à exécuter lors du clic sur une annonce

                  },
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
