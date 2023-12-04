
import 'package:firebase_auth/firebase_auth.dart';
import 'package:order_application/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  Users? _userFromFirebaseUser(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? Users(uid: user.uid) : null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password


  // register with email and password

  // sign out

}