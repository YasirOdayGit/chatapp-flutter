import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  User? user;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> initListen() async {
    _firebaseAuth.authStateChanges().listen((User? us) {
      if (user != null && user != us) {
        user = us;
        notifyListeners();
      } else {
        user = null;
        notifyListeners();
      }
    });
  }

  bool loggedIn = false;
}
