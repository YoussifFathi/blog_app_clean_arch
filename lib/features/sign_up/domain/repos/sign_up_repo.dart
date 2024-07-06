import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:dartz/dartz.dart';
abstract class SignUpRepo {
  Future<Either<Failure,SignUpResponseModel>> signUp(SignUpRequestModel signUpRequestModel);
}