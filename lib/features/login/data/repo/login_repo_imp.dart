import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_request_model.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_response_model.dart';
import 'package:blog_app_clean_arch/features/login/domain/repo/login_repo.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepoIMP implements LoginRepo {
  @override
  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel loginRequestModel) async {
    try{
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(email: loginRequestModel.email, password: loginRequestModel.password);
      if(response.user?.uid != null){
        final doc = await FirebaseFirestore.instance.collection('users').doc(response.user!.uid).get();
        final LoginResponseModel loginResponseModel = LoginResponseModel(userEntity: UserEntity.fromJson(doc.data()), message: "Operation Done Successfully");
        return right(loginResponseModel);
      }
      throw(UnsupportedError);
    }catch(e){
      return left(Failure(message: e.toString()));
    }
  }

}