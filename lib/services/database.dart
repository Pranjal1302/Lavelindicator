import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yoga/models/Users.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  Future updateUserData(String name, String email, String number) async {
    return await userCollection.doc(uid).set({
      'uid': uid,
      'name': name,
      'email': email,
      'number': number,
    });
  }

  List<Users> _userListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Users(
        uid: doc['uid'] ?? '',
        name: doc['name'] ?? '',
        email: doc['email'] ?? '',
        number: doc['number'] ?? '',
      );
    }).toList();
  }

  Stream<List<Users>> get users {
    return userCollection.snapshots().map(_userListFromSnapshot);
  }
}
