import 'package:blog_app_clean_arch/core/Failures/failure.dart';
import 'package:blog_app_clean_arch/core/use_case/use_case_base.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_request_model.dart';
import 'package:blog_app_clean_arch/features/login/data/models/login_response_model.dart';
import 'package:blog_app_clean_arch/features/login/data/repo/login_repo_imp.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements UseCaseBase<LoginResponseModel , LoginRequestModel>{
  final LoginRepoIMP loginRepoIMP;

  LoginUseCase(this.loginRepoIMP);


  @override
  Future<Either<Failure, LoginResponseModel>> execute(LoginRequestModel loginRequestModel) async {
    return await loginRepoIMP.login(loginRequestModel);
  }

}