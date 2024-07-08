import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AuthController {
  AuthController._privateConstructor();

  static final AuthController authController =
      AuthController._privateConstructor();

  bool isUserLoggedIn = false;
  late UserEntity userEntity;

  Future<void> checkUserLoggedIn() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      try {
        await _updateUserEntity(currentUser);
        isUserLoggedIn = true;
      } catch (e) {
        isUserLoggedIn = false;
        return;
      }
    } else {
      isUserLoggedIn = false;
      return;
    }
  }

  void setUserAfterLogin(UserEntity user) {
    userEntity = user;
    isUserLoggedIn = true;
  }

  Future<bool> updateUser() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      await _updateUserEntity(currentUser);
      return true;
    } else {
      return true;
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    isUserLoggedIn = false;
  }

  Future<void> _updateUserEntity(User currentUser) async {
    final response = await FirebaseFirestore.instance
        .collection("users")
        .doc(currentUser.uid)
        .get();
    userEntity = UserEntity.fromJson(response.data());
  }
}
