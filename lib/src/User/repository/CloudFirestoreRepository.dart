import 'package:platzi_trips/src/User/model/User.dart';
import 'package:platzi_trips/src/User/repository/CloudFirestoreApi.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreApi = CloudFirestoreApi();

  void updateUserDataFirestore(User user) => _cloudFirestoreApi.updateUserData(user);
}