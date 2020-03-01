import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips/src/User/model/User.dart';

class CloudFirestoreApi {
  final String  USERS = "users";
  final String  PLACES = "place";

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(this.USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'myPlaces': user.myPlaces,
      'myFavoritesPlaces': user.myFavoritesPlaces,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }
}