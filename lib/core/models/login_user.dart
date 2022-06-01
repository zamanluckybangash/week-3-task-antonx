
class LoginUser {

  String? name;
  String? password;
  LoginUser({this.name, this.password});

  // receiving data from server
  factory LoginUser.fromMap(map) {
    return LoginUser(
      name: map['uid'],
      password: map['email'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'password': password,
    };
  }
}
