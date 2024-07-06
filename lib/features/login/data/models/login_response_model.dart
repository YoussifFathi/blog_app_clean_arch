import 'package:blog_app_clean_arch/features/sign_up/domain/entities/user_entity.dart';

class LoginResponseModel {
  final UserEntity userEntity;
  final String message;

  LoginResponseModel({required this.userEntity, required this.message});

  factory LoginResponseModel.fromJson(json) {
    return LoginResponseModel(
        userEntity: UserEntity.fromJson(json),
        message: json['message'] ?? "Operation Done Successfully");
  }
}
