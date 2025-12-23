 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

//state management so we can call AuthService everytime we want
ValueNotifier<AuthService> authServices = ValueNotifier(AuthService());

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //we have access to the current user at any point
  User? get currentUser => firebaseAuth.currentUser;

  //return the information if the user is connected or not
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  //Create a Sign in
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  //Create an account
  Future<UserCredential> createAccount({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  //Sign out
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }




}