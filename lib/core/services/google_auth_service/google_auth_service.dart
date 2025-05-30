import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  GoogleSignIn? _googleSignIn;

  GoogleAuthService() {
    _createGoogleSignIn();
  }

  GoogleSignIn? get instance => _googleSignIn;

  Future<void> _createGoogleSignIn() async {
    _googleSignIn =
        instance ??
        GoogleSignIn(
          scopes: ['email'],
          serverClientId:
              '850302585778-adpro2l6nusini5qmpqo9h9bffj81fi3.apps.googleusercontent.com',
        );
  }

  // Sign in and return user data
  Future<Map<String, dynamic>?> signIn() async {
    try {
      await _googleSignIn!.signOut();
      final GoogleSignInAccount? account = await _googleSignIn!.signIn();
      if (account == null) return null;

      final GoogleSignInAuthentication auth = await account.authentication;
      log(auth.idToken ?? 'No');
      return {
        'id': account.id,
        'email': account.email,
        'displayName': account.displayName,
        'photoUrl': account.photoUrl,
        'idToken': auth.idToken,
        'accessToken': auth.accessToken,
      };
    } catch (e) {
      log('Google sign-in error: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>?> signInSilently() async {
    try {
      final GoogleSignInAccount? account =
          await _googleSignIn!.signInSilently();
      if (account == null) return null;

      final GoogleSignInAuthentication auth = await account.authentication;

      return {
        'id': account.id,
        'email': account.email,
        'displayName': account.displayName,
        'photoUrl': account.photoUrl,
        'idToken': auth.idToken,
        'accessToken': auth.accessToken,
      };
    } catch (e) {
      log('Google sign-in error: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn!.signOut();
  }
}
