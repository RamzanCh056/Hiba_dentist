class pdfModel {
  List<Prescription>? prescription;
  List<Xray>? xray;
  List<Other>? other;

  pdfModel({this.prescription, this.xray, this.other});

  pdfModel.fromJson(Map<String, dynamic> json) {
    if (json['prescription'] != null) {
      prescription = <Prescription>[];
      json['prescription'].forEach((v) {
        prescription!.add(new Prescription.fromJson(v));
      });
    }
    if (json['xray'] != null) {
      xray = <Xray>[];
      json['xray'].forEach((v) {
        xray!.add(new Xray.fromJson(v));
      });
    }
    if (json['other'] != null) {
      other = <Other>[];
      json['other'].forEach((v) {
        other!.add(new Other.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.prescription != null) {
      data['prescription'] = this.prescription!.map((v) => v.toJson()).toList();
    }
    if (this.xray != null) {
      data['xray'] = this.xray!.map((v) => v.toJson()).toList();
    }
    if (this.other != null) {
      data['other'] = this.other!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Prescription {
  int? id;
  String? prescription;
  String? prescriptionPdf;
  String? addedDate;
  String? updatedDate;
  int? appointmentId;

  Prescription(
      {this.id,
      this.prescription,
      this.prescriptionPdf,
      this.addedDate,
      this.updatedDate,
      this.appointmentId});

  Prescription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    prescription = json['prescription'];
    prescriptionPdf = json['prescription_pdf'];
    addedDate = json['added_date'];
    updatedDate = json['updated_date'];
    appointmentId = json['appointment_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['prescription'] = this.prescription;
    data['prescription_pdf'] = this.prescriptionPdf;
    data['added_date'] = this.addedDate;
    data['updated_date'] = this.updatedDate;
    data['appointment_id'] = this.appointmentId;
    return data;
  }
}

class Xray {
  int? id;
  String? docName;
  String? docFile;
  String? addedDate;
  String? updatedDate;
  int? appointmentId;

  Xray(
      {this.id,
      this.docName,
      this.docFile,
      this.addedDate,
      this.updatedDate,
      this.appointmentId});

  Xray.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    docName = json['doc_name'];
    docFile = json['doc_file'];
    addedDate = json['added_date'];
    updatedDate = json['updated_date'];
    appointmentId = json['appointment_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['doc_name'] = this.docName;
    data['doc_file'] = this.docFile;
    data['added_date'] = this.addedDate;
    data['updated_date'] = this.updatedDate;
    data['appointment_id'] = this.appointmentId;
    return data;
  }
}

class Other {
  int? id;
  String? reportComments;
  Null? otherPdf;
  String? addedDate;
  String? updatedDate;
  int? appointmentId;

  Other(
      {this.id,
      this.reportComments,
      this.otherPdf,
      this.addedDate,
      this.updatedDate,
      this.appointmentId});

  Other.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reportComments = json['report_comments'];
    otherPdf = json['other_pdf'];
    addedDate = json['added_date'];
    updatedDate = json['updated_date'];
    appointmentId = json['appointment_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['report_comments'] = this.reportComments;
    data['other_pdf'] = this.otherPdf;
    data['added_date'] = this.addedDate;
    data['updated_date'] = this.updatedDate;
    data['appointment_id'] = this.appointmentId;
    return data;
  }
}
