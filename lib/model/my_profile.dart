class myprofile {
  String? lastLogin;
  String? firstName;
  String? lastName;
  String? email;
  String? dateJoined;

  myprofile(
      {this.lastLogin,
      this.firstName,
      this.lastName,
      this.email,
      this.dateJoined});

  myprofile.fromJson(Map<String, dynamic> json) {
    lastLogin = json['last_login'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    dateJoined = json['date_joined'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_login'] = this.lastLogin;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['date_joined'] = this.dateJoined;
    return data;
  }
}