class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, String> toJson() {
    final data = <String, String>{};
    data["email"] = email;
    data["password"] = password;

    return data;
  }
}
