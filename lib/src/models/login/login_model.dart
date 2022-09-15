class LoginModel {
  late String status, username, role, token;

  LoginModel(
      {required this.status,
      required this.username,
      required this.role,
      required this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'].toString();
    username = json['username'].toString();
    role = json['role'].toString();
    token = json['token'].toString();
  }
}
