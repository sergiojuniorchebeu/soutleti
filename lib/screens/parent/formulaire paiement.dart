import 'package:agse2/Fichier%20fonctions.dart';
import 'package:flutter/material.dart';

class FormulairePaiement extends StatefulWidget {
  const FormulairePaiement({super.key});

  @override
  State<FormulairePaiement> createState() => _FormulairePaiementState();
}

class _FormulairePaiementState extends State<FormulairePaiement> {
  bool acceptConditions = false;
  final TextEditingController _nom = TextEditingController();
  final TextEditingController _prenom = TextEditingController();
  final TextEditingController _tauxglucemie= TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  late String _selectedmontant = '50 000';
  late String _selectedclasse = '6e';
  late String _selectedtranche = 'tranche1';



  bool validateFields() {
    if (_nom.text.isEmpty ||
        _prenom.text.isEmpty ||
        _email.text.isEmpty ||
        _tauxglucemie.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.error, color: Colors.red,),
          title: Text("Champs manquants", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),),
          content: Text("Veuillez remplir tous les champs.", style: TextStyle(fontFamily: "Poppins", fontSize: 17)),
          actions: [
            TextButton(
              child: Text("OK", style: TextStyle(fontFamily: "Poppins", fontSize: 27)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
      return false;
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utilitaires.appbar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.1,
                  vertical: constraints.maxHeight * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Text(
                      "Entrez Les informations Liées au paiement",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontFamily: "Poppins",
                        fontSize: constraints.maxWidth * 0.04,
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                    TextField(
                      controller: _nom,
                      decoration: InputDecoration(
                        labelText: 'Entrez le nom de votre enfant',
                        hintText: 'Entrez le nom de votre enfant',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                    TextField(
                      controller: _prenom,
                      decoration: InputDecoration(
                        labelText: 'Prénoms',
                        hintText: 'Entrez vos prénoms',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                    DropdownButtonFormField<String>(
                      dropdownColor: Colors.blueGrey[100],
                      value: _selectedtranche,
                      items: const [
                        DropdownMenuItem(value: 'tranche1', child: Text("1ere Tranche")),
                        DropdownMenuItem(value: 'tranche2', child: Text("2eme Tranche")),
                        DropdownMenuItem(value: 'tranche3', child: Text("3eme Tranche")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedtranche = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Selectioner la tranche',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                    DropdownButtonFormField<String>(
                      dropdownColor: Colors.blueGrey[100],
                      value: _selectedclasse,
                      items: const [
                        DropdownMenuItem(child: Text("6e"), value: '6e'),
                        DropdownMenuItem(child: Text("5e"), value: '5e'),
                        DropdownMenuItem(child: Text("4e"), value: '4e'),
                        DropdownMenuItem(child: Text("3e"), value: '3e'),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedclasse = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Selectionner la classe',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.04),
                    DropdownButtonFormField<String>(
                      dropdownColor: Colors.blueGrey[100],
                      value: _selectedmontant,
                      items: const [
                        DropdownMenuItem(child: Text("50 000"), value: '50 000'),
                        DropdownMenuItem(child: Text("100 000"), value: '100 000')
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedmontant = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Montant',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.08),
                    ElevatedButton(
                      onPressed: () async {
                        /*if (!acceptConditions) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              icon: Icon(Icons.warning, color: Colors.orange,),
                              title: Text("Conditions non acceptées", style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              content: Text("Vous devez accepter les conditions d'utilisation pour continuer."),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          );
                          return;
                        }*/

                        /*if (validateFields()) {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Enregistement"),
                                content: Row(
                                  children: [
                                    //AppWidget.Loading(),
                                    Text(
                                      "Veuillez patientez...",
                                      style: TextStyle(fontFamily: "Poppins"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }*/
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green[400]),
                        //backgroundColor: MaterialStateProperty.all(acceptConditions ? Colors.green[400] : Colors.grey),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(constraints.maxWidth * 0.04),
                        child: Text(
                          "Inscription",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: constraints.maxWidth * 0.05,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: constraints.maxHeight * 0.02),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
