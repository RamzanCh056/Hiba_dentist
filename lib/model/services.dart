class services {
  int? id;
  String? serviceName;
  String? serviceDescription;
  String? serviceImage;
  int? price;

  services(
      {this.id,
      this.serviceName,
      this.serviceDescription,
      this.serviceImage,
      this.price});

  services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    serviceDescription = json['service_description'];
    serviceImage = json['service_image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_name'] = this.serviceName;
    data['service_description'] = this.serviceDescription;
    data['service_image'] = this.serviceImage;
    data['price'] = this.price;
    return data;
  }
}