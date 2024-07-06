import 'package:blog_app_clean_arch/core/utils/validator_handler.dart';
import 'package:blog_app_clean_arch/core/widgets/custom_main_button.dart';
import 'package:blog_app_clean_arch/core/widgets/password_text_field.dart';
import 'package:blog_app_clean_arch/core/widgets/primary_text_field.dart';
import 'package:blog_app_clean_arch/features/login/presentation/controller/login_cubit.dart';
import 'package:blog_app_clean_arch/features/login/presentation/view/widgets/does_not_account_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = BlocProvider.of<LoginCubit>(context);
    return Form(
      key: loginCubit.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 32,
                ),
                PrimaryTextField(
                  textEditingController: loginCubit.emailController,
                  hintTxt: "Email",
                  prefixIconData: Icons.email,
                  validator: ValidatorHandler.emailValidator,
                ),
                const SizedBox(
                  height: 16,
                ),
                PasswordTextField(
                  textEditingController: loginCubit.passwordController,
                  hintTxt: "Password",
                  prefixIconData: Icons.lock,
                  validator: ValidatorHandler.passwordValidator,

                ),
                const SizedBox(
                  height: 32,
                ),
                CustomMainButton(
                    onPress: () {
                      if(loginCubit.formKey.currentState!.validate()){
                      }
                    },
                    buttonTxt: "Login"),
                const SizedBox(
                  height: 16,
                ),
                const DoesNotHaveAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

