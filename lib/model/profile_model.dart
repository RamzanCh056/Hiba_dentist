class profileModel {
  int? id;
  int? appSlotId;
  String? appointDate;
  String? appointTime;
  int? appointFee;
  String? emailId;
  String? addedDate;
  String? firstName;
  String? lastName;
  int? isVisited;
  String? mobileNo;
  int? userId;

  profileModel(
      {this.id,
      this.appSlotId,
      this.appointDate,
      this.appointTime,
      this.appointFee,
      this.emailId,
      this.addedDate,
      this.firstName,
      this.lastName,
      this.isVisited,
      this.mobileNo,
      this.userId});

  profileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appSlotId = json['app_slot_id'];
    appointDate = json['appoint_date'];
    appointTime = json['appoint_time'];
    appointFee = json['appoint_fee'];
    emailId = json['email_id'];
    addedDate = json['added_date'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    isVisited = json['is_visited'];
    mobileNo = json['mobile_no'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['app_slot_id'] = this.appSlotId;
    data['appoint_date'] = this.appointDate;
    data['appoint_time'] = this.appointTime;
    data['appoint_fee'] = this.appointFee;
    data['email_id'] = this.emailId;
    data['added_date'] = this.addedDate;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['is_visited'] = this.isVisited;
    data['mobile_no'] = this.mobileNo;
    data['user_id'] = this.userId;
    return data;
  }
}