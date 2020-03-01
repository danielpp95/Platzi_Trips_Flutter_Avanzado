import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/User/model/User.dart';
import 'package:platzi_trips/src/User/repository/AuthRepository.dart';
import 'package:platzi_trips/src/User/repository/CloudFirestoreRepository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRpository();

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn(){
    return _authRepository.signInFirebase();
  }

  signOut() {
    _authRepository.signOutFirebase()();
  }

  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  
  @override
  void dispose() {
  }
}