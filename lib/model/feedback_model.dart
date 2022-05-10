class fedback_model {
  int? id;
  int? appId;
  String? firstName;
  String? lastName;
  String? emailId;
  int? rating;
  String? description;
  bool? isActive;
  bool? isDisplay;
  String? addedDate;

  fedback_model(
      {this.id,
      this.appId,
      this.firstName,
      this.lastName,
      this.emailId,
      this.rating,
      this.description,
      this.isActive,
      this.isDisplay,
      this.addedDate});

  fedback_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appId = json['app_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    emailId = json['email_id'];
    rating = json['rating'];
    description = json['description'];
    isActive = json['is_active'];
    isDisplay = json['is_display'];
    addedDate = json['added_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['app_id'] = this.appId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email_id'] = this.emailId;
    data['rating'] = this.rating;
    data['description'] = this.description;
    data['is_active'] = this.isActive;
    data['is_display'] = this.isDisplay;
    data['added_date'] = this.addedDate;
    return data;
  }
}