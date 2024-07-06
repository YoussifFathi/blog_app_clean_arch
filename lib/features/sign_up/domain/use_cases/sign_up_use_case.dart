import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/repos/sign_up_repo_imp.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpUseCase{
  final SignUpRepoIMP signUpRepoIMP;

  SignUpUseCase(this.signUpRepoIMP);

  Future<Either<Failure, SignUpResponseModel>> execute(SignUpRequestModel signUpRequestModel)async{
   return await signUpRepoIMP.signUp(signUpRequestModel);
  }

}