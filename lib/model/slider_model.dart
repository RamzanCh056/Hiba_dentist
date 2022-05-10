class slider_model {
  int? id;
  String? carouselTitle;
  String? carouselDescription;
  String? carouselImage;

  slider_model(
      {this.id,
      this.carouselTitle,
      this.carouselDescription,
      this.carouselImage});

  slider_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    carouselTitle = json['carousel_title'];
    carouselDescription = json['carousel_description'];
    carouselImage = json['carousel_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['carousel_title'] = this.carouselTitle;
    data['carousel_description'] = this.carouselDescription;
    data['carousel_image'] = this.carouselImage;
    return data;
  }
}