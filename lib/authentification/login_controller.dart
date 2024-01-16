import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isLoading = false;
  String _errorMessage = '';

  String get email => _email;
  String get password => _password;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void setErrorMessage(String errorMessage) {
    _errorMessage = errorMessage;
    notifyListeners();
  }

  // Ajoutez ici des méthodes pour gérer la validation des champs, la connexion, etc.
  // Par exemple, vous pouvez ajouter une méthode pour effectuer la connexion.

  Future<bool> logIn(mail, password) async {
    try {
      setLoading(true);

      
      // Vérifiez que l'e-mail et le mot de passe ne sont pas vides
      if (mail == null || password== null) {
        setErrorMessage('Veuillez remplir tous les champs.');
        return false ;
      }
      else{
        setEmail(mail);
        setPassword(password);
      }

      // Effectuez la connexion avec Firebase Authentication
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);

      // Connexion réussie
      final user = userCredential.user?.email;
      if (user != null) {
        return true;
      } else {
        setErrorMessage('La connexion a échoué, veuillez réessayer.');
        return false;
      }
    } on FirebaseAuthException catch (e) {
      
      setErrorMessage('Erreur lors de la connexion : $e');
      return false;

    } finally {
      setLoading(false);
    }
  }
}
