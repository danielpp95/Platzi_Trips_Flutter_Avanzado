import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/User/repository/AuthRepository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRpository();

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn(){
    return _authRepository.signInFirebase();
  }
  
  @override
  void dispose() {
  }
}