class UserEntity {
  final String name;
  final String password;
  final String email;

  UserEntity({required this.name, required this.password, required this.email});

  factory UserEntity.fromJson(json) {
    return UserEntity(
      name: json["name"],
      password: json["password"],
      email: json["email"],
    );
  }
}
