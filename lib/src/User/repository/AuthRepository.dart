import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips/src/User/repository/FirebaseAuthApi.dart';

class AuthRpository {
  final _firebaseAuthApi = FirebaseAuthApi();
  
  Future<FirebaseUser> signInFirebase() => _firebaseAuthApi.signIn();
  
  signOutFirebase() => _firebaseAuthApi.signOut();
}