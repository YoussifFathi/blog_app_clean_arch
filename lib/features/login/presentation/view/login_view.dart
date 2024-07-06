import 'package:blog_app_clean_arch/core/utils/locator_service.dart';
import 'package:blog_app_clean_arch/features/login/domain/use_cases/login_use_case.dart';
import 'package:blog_app_clean_arch/features/login/presentation/controller/login_cubit.dart';
import 'package:blog_app_clean_arch/features/login/presentation/view/widgets/login_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(SetupServiceLocator.getIt.get<LoginUseCase>()),
      child: const Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
