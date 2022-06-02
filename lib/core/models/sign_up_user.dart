
class SignUpUser {

  String? id;
  String? name;
  String? email;
  String? password;
  String? confirmPassword;

  SignUpUser({this.id, this.name, this.email, this.password,this.confirmPassword});

  // receiving data from server
  SignUpUser.fromJson(Map<String, dynamic> json, id) {
    id = id;
    email = json['email'];
    name = json['name'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
  }

  // sending data to server
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    return data;
  }
}
