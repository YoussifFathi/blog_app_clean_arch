import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/entities/user_entity.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/repos/sign_up_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpRepoIMP implements SignUpRepo {


  SignUpRepoIMP();

  @override
  Future<Either<Failure, SignUpResponseModel>> signUp(
      SignUpRequestModel signUpRequestModel) async {
    try {
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: signUpRequestModel.email, password: signUpRequestModel.password);
      if (response.user != null) {
        final UserEntity userEntity = UserEntity(name: signUpRequestModel.name, email: response.user!.email!, id: response.user!.uid, createdAt: DateTime.now().toString(), updatedAt: DateTime.now().toString());
        await FirebaseFirestore.instance.collection("users").doc(userEntity.id).set(userEntity.toJson());
        return right(SignUpResponseModel(userEntity: userEntity, message: "Operation Done Successfully"));
      }
      throw (UnsupportedError);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
