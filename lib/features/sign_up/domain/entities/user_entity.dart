

class UserEntity {
  final String id;
  final String name;
  final String email;
  final String createdAt;
  final String updatedAt;


  UserEntity({required this.name, required this.email, required this.id,required this.createdAt,required this.updatedAt
  });

  factory UserEntity.fromJson(json) {
    return UserEntity(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
    );
  }

  Map<String,dynamic> toJson(){
    return {
      "id": id,
      "name": name,
      "email": email,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };
  }

}
