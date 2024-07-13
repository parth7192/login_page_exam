import 'package:firebase_core/firebase_core.dart';

class AuthSerivce {
  AuthSerivce._();
  static final AuthSerivce instance = AuthSerivce._();

  Future<User?> anonymousLogIn() async {
    UserCredential credential = await auth.signInAnonymously();

    return credential.user;
  }

  FirebaseAuth auth = FirebaseAuth.instance;
}
