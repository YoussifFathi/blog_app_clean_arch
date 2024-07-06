import 'package:blog_app_clean_arch/core/secerts/app_secerts.dart';
import 'package:blog_app_clean_arch/features/sign_up/data/repos/sign_up_repo_imp.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SetupServiceLocator {
  static final getIt =GetIt.instance;
  static void execute(){
    getIt.registerSingleton<SignUpRepoIMP>(SignUpRepoIMP());
    getIt.registerSingleton<SignUpUseCase>(SignUpUseCase(getIt.get<SignUpRepoIMP>()));


  }
}

