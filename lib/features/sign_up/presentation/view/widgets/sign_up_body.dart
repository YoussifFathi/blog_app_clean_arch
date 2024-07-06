import 'package:blog_app_clean_arch/core/utils/validator_handler.dart';
import 'package:blog_app_clean_arch/core/widgets/custom_main_button.dart';
import 'package:blog_app_clean_arch/core/widgets/password_text_field.dart';
import 'package:blog_app_clean_arch/core/widgets/primary_text_field.dart';
import 'package:blog_app_clean_arch/features/sign_up/presentation/controller/sign_up_cubit.dart';
import 'package:blog_app_clean_arch/features/sign_up/presentation/view/widgets/have_account_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpCubit = BlocProvider.of<SignUpCubit>(context);
    return BlocBuilder<SignUpCubit, SignUpState>(
  builder: (context, state) {
    return state is SignUpLoading ? const Center(child: CircularProgressIndicator(),) : Form(
      key: signUpCubit.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up.",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 32,
                ),
                PrimaryTextField(
                  textEditingController: signUpCubit.nameController,
                  hintTxt: "Name",
                  prefixIconData: Icons.person,
                  validator: ValidatorHandler.nameValidator,
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryTextField(
                  textEditingController: signUpCubit.emailController,
                  hintTxt: "Email",
                  prefixIconData: Icons.email,
                  validator: ValidatorHandler.emailValidator,

                ),
                const SizedBox(
                  height: 16,
                ),
                PasswordTextField(
                  textEditingController: signUpCubit.passwordController,
                  hintTxt: "Password",
                  prefixIconData: Icons.lock,
                  validator: ValidatorHandler.passwordValidator,

                ),
                const SizedBox(
                  height: 32,
                ),
                CustomMainButton(
                    onPress: () {
                      if(signUpCubit.formKey.currentState!.validate()){
                        signUpCubit.signUp();
                      }
                    },
                    buttonTxt: "Sign Up"),
                const SizedBox(
                  height: 16,
                ),
                const HaveAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  },
);
  }
}

