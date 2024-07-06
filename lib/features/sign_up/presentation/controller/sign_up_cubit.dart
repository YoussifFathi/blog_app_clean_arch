import 'package:blog_app_clean_arch/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:blog_app_clean_arch/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUseCase _signUpUseCase;

  SignUpCubit(this._signUpUseCase) : super(SignUpInitial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    emit(SignUpLoading());
    final SignUpRequestModel signUpRequestModel = SignUpRequestModel(
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
    final response = await _signUpUseCase.execute(signUpRequestModel);
    response.fold((l) {
      print(l.message);
      emit(SignUpFailure(l.message));
    }, (r) {
      emit(SignUpSuccess());
    });
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    return super.close();
  }
}
