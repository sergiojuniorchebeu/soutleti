import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';


class ProfilParent extends StatefulWidget {
  const ProfilParent({Key? key});

  @override
  State<ProfilParent> createState() => _ProfilParentState();
}

class _ProfilParentState extends State<ProfilParent> {


  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      CircleAvatar(
                        radius: constraints.maxWidth * 0.1,
                        backgroundImage: const AssetImage('asssets/img/user.png'),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Leticia',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Row(
                        children: [
                          Text("Yantchop"),

                        ],
                      ),
                      const SizedBox(height: 40),
                      Flexible(
                        child: Container(
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.edit),
                                  title: Text('Modifier ses informations'),
                                  onTap: () {
                                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateDonnees(userId)));
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.info),
                                  title: Text('Voir ses informations'),
                                  onTap: () {}
                                    //Navigator.push( context, MaterialPageRoute(builder: (context) => Graphre()),);},
                                ),
                                ListTile(
                                  leading: Icon(Icons.logout),
                                  title: Text('Se Déconnecter'),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          icon: Icon(Icons.logout,),
                                          iconColor: Colors.blue,
                                          title: Text('Confirmation', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                          content: Text('Voulez-vous vous déconnecter ?'),
                                          actions: [
                                            TextButton(
                                              child: Text('Non'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: Text('Oui', style: TextStyle(color: Colors.red)),
                                              onPressed: () {

                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
