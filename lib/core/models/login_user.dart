
class LoginUser {
  String? id;
  String? email;
  String? password;
  LoginUser({this.id ,this.email, this.password});

  LoginUser.fromJson(Map<String, dynamic> json, id) {
    id = this.id;
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.password;
    return data;
  }



  // // receiving data from server
  // factory LoginUser.fromMap(map) {
  //   return LoginUser(
  //     email: map['uid'],
  //     password: map['email'],
  //   );
  // }
  //
  // // sending data to our server
  // Map<String, dynamic> toMap() {
  //   return {
  //     'name': email,
  //     'password': password,
  //   };
  // }
}
