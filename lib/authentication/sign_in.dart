import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:apka/service/database.dart';
import 'package:apka/models/users.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
DatabaseServices dbs= new DatabaseServices();
final storage = new FlutterSecureStorage();

Future<FirebaseUser> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  print(authResult);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);
  print(user.uid);
  final storage = new FlutterSecureStorage();
  await storage.write(key: "username", value: user.uid);
  print(user.uid);
  print(user.displayName);
  await storage.write(key: "username1", value: user.displayName);
  dbs.checkRegistered(user);
  return currentUser;

}

void signOutGoogle() async {
  await googleSignIn.signOut();
  await storage.write(key: "username", value: null);
  await storage.write(key: "varify", value: null);
  await storage.write(key: "varify2", value: null);
  print("User Sign Out");
}
