import 'package:blog_app_clean_arch/features/login/data/repo/login_repo_imp.dart';
import 'package:blog_app_clean_arch/features/login/domain/use_cases/login_use_case.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/repos/sign_up_repo_imp.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:get_it/get_it.dart';

abstract class SetupServiceLocator {
  static final getIt =GetIt.instance;
  static void execute(){
    getIt.registerSingleton<SignUpRepoIMP>(SignUpRepoIMP());
    getIt.registerSingleton<SignUpUseCase>(SignUpUseCase(getIt.get<SignUpRepoIMP>()));

    getIt.registerSingleton<LoginRepoIMP>(LoginRepoIMP());
    getIt.registerSingleton<LoginUseCase>(LoginUseCase(getIt.get<LoginRepoIMP>()));


  }
}

