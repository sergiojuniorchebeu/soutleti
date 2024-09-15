import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Page Acceuil Admin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  bool _rememberMe = false;
  String? errorMessage;

  Future<void> _connexion() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        errorMessage = null;
      });

      try {
        // Connexion avec Firebase Auth
        await _auth.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Connexion réussie, naviguer vers une autre page
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
      } on FirebaseAuthException catch (e) {
        _handleAuthException(e);
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
        errorMessage = null;
      });

      try {
        // Inscription avec Firebase Auth
        await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Inscription réussie, naviguer vers une autre page
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
      } on FirebaseAuthException catch (e) {
        _handleAuthException(e);
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }


  void _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        _showErrorSnackbar("Utilisateur non trouvé.");
        break;
      case 'wrong-password':
        _showErrorSnackbar("Mot de passe incorrect.");
        break;
      case 'network-request-failed':
        _showErrorSnackbar("Connexion internet perdue ou instable.");
        break;
      case 'invalid-email':
        _showErrorSnackbar("L'adresse e-mail est invalide.");
        break;
      default:
        _showErrorSnackbar("Erreur de connexion : ${e.message}");
    }
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 1000,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // Section gauche (illustration)
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asssets/img/blogger.png',
                          width: 250,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              // Section droite (formulaire)
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(40), // Padding pour desktop
                  child: Form(
                    key: _formKey,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Bienvenue',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D2D2D),
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildEmailField(),
                          _buildPasswordField(),
                          _buildErrorMessage(),
                          const SizedBox(height: 20),
                          _buildLoginButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: _emailController,
        decoration: const InputDecoration(
          labelText: 'Adresse e-mail',
          hintText: 'Entrez votre email',
          border: OutlineInputBorder(),
        ),
        validator: _validateEmail,
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Mot de passe',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Veuillez entrer votre mot de passe';
          }
          return null;
        },
      ),
    );
  }





  Widget _buildErrorMessage() {
    return errorMessage != null && errorMessage!.isNotEmpty
        ? Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Text(
        errorMessage!,
        style: const TextStyle(color: Colors.red, fontSize: 16),
      ),
    )
        : const SizedBox.shrink();
  }

  Widget _buildLoginButton() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green ,
        border: Border.all(color: Colors.black), // Pas de coins arrondis
      ),
      child: _isLoading
          ? const Center(
        child: CircularProgressIndicator(color: Colors.white),
      )
          : TextButton(
        onPressed: _connexion,
        child: const Text(
          'Connexion',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre adresse e-mail';
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Veuillez entrer une adresse e-mail valide';
    }
    return null;
  }
}
