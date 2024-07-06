import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_request_model.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failure,LoginResponseModel>> login(LoginRequestModel loginRequestModel);

}