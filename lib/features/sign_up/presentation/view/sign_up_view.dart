import 'package:blog_app_clean_arch/core/utils/locator_service.dart';
import 'package:blog_app_clean_arch/features/sign_up/presentation/controller/sign_up_cubit.dart';
import 'package:blog_app_clean_arch/features/sign_up/presentation/view/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/sign_up_use_case.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(SetupServiceLocator.getIt.get<SignUpUseCase>()),
      child: const Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}
