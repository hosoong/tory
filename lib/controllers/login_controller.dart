import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tory/view/login_page.dart';
import './../module/colors.dart';

class LoginController extends GetxController {



var firebase = FirebaseFirestore.instance;
var firebaseAuth = FirebaseAuth.instance;



Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser =
  await GoogleSignIn(scopes: ['profile', 'email']).signIn();
  final GoogleSignInAuthentication? googleAuth =
  await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

  Future<void> addGoogleUser(String email, String name, String uid, String userphoto) async {
    firebase.collection("users").doc(uid).set({
      "email": email,
      "name": name,
      "uid": uid,
      "userphoto":userphoto,
      // "id" : "id",
    });
  }

}

