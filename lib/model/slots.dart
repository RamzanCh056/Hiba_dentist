class slots {
  int? id;
  String? time;
  bool? status;

  slots({this.id, this.time, this.status});

  slots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['time'] = this.time;
    data['status'] = this.status;
    return data;
  }
}
