import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterController extends ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isLoading = false;
  String _errorMessage = '';
  bool _isRegisteredSuccessfully = false;
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

  bool get isRegisteredSuccessfully => _isRegisteredSuccessfully;



  // Ajoutez ici des méthodes pour gérer la validation des champs, l'inscription, etc.
  // Par exemple, vous pouvez ajouter une méthode pour effectuer l'inscription.

  Future<bool> signUp(mail, password) async {
    try {
      setLoading(true);

      // Vérifiez que l'e-mail et le mot de passe ne sont pas vides
      if (mail.isEmpty || password.isEmpty) {
        setErrorMessage('Veuillez remplir tous les champs.');
        
      }else{
        setEmail(mail);
        setPassword(password);
      }

      // Effectuez l'inscription avec Firebase Authentication
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
      
      // Utilisateur enregistré avec succès
      print("bonjour");
      print(userCredential);
      
      _isRegisteredSuccessfully = true;

      return true;
    } on FirebaseAuthException catch (e) {
      setErrorMessage('Erreur lors de l\'inscription : $e');
      return false;
    } finally {
      setLoading(false);
    }
    
  }
}
