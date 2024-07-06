import 'package:blog_app_clean_arch/features/login/data/models/login_request_model.dart';
import 'package:blog_app_clean_arch/features/login/domain/use_cases/login_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  LoginCubit(this.loginUseCase) : super(LoginInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> login()async{
    emit(LoginLoading());
    final LoginRequestModel loginRequestModel = LoginRequestModel(email: emailController.text, password: passwordController.text);
    final response = await loginUseCase.execute(loginRequestModel);
    response.fold((l) {
      emit(LoginFailure(l.message));
    }, (r){
      emit(LoginSuccessfully());

    });
  }


  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();

    return super.close();
  }

}
