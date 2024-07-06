import 'package:blog_app_clean_arch/features/sign_up/presentation/controller/sign_up_cubit.dart';
import 'package:blog_app_clean_arch/features/sign_up/presentation/view/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: const Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}
