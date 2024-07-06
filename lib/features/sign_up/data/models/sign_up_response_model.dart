import 'package:blog_app_clean_arch/features/sign_up/domain/entities/user_entity.dart';

class SignUpResponseModel {
  final UserEntity userEntity;
  final String message;

  SignUpResponseModel({required this.userEntity, required this.message});

  factory SignUpResponseModel.fromJson(json) {
    return SignUpResponseModel(
        userEntity: UserEntity.fromJson(json),
        message: json['message'] ?? "Operation Done Successfully");
  }
}
