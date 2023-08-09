import 'package:dirbbox/navigation/bottom_page.dart';
import 'package:dirbbox/widgets/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return BottomNavbar();
          } else {
            return LoginPage();
          }
        });
  }

// sign in with google
  signInwithGoogle() async {
    // trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>['email']).signIn();

    // obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // once signed in, return the usercredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

// signout
  signOut() async {
    final GoogleSignIn _googleUser =  GoogleSignIn();
    await _googleUser.signOut();
    await FirebaseAuth.instance.signOut();
  }
}
