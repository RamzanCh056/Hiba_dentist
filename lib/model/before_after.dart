class before_after {
  int? id;
  String? beforeImage;
  String? afterImage;

  before_after({this.id, this.beforeImage, this.afterImage});

  before_after.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    beforeImage = json['before_image'];
    afterImage = json['after_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['before_image'] = this.beforeImage;
    data['after_image'] = this.afterImage;
    return data;
  }
}