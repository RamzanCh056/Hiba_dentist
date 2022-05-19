class appointment_date {
  int? id;
  String? appointDate;
  String? addDate;
  String? updateDate;

  appointment_date({this.id, this.appointDate, this.addDate, this.updateDate});

  appointment_date.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointDate = json['appoint_date'];
    addDate = json['add_date'];
    updateDate = json['update_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['appoint_date'] = this.appointDate;
    data['add_date'] = this.addDate;
    data['update_date'] = this.updateDate;
    return data;
  }
}
