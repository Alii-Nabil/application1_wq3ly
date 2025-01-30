class alldocumentsmodil {
  List<AllDocumentsModel>? documents;
  int? totalPages;

  alldocumentsmodil({this.documents, this.totalPages});

  alldocumentsmodil.fromJson(Map<String, dynamic> json) {
    if (json['documents'] != null) {
      documents = <AllDocumentsModel>[];
      json['documents'].forEach((v) {
        documents!.add(new AllDocumentsModel.fromJson(v));
      });
    }
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.documents != null) {
      data['documents'] = this.documents!.map((v) => v.toJson()).toList();
    }
    data['totalPages'] = this.totalPages;
    return data;
  }
}

class AllDocumentsModel {
  int? id;
  String? externalId;
  int? userId;
  int? teamId;
  String? title;
  String? status;
  String? documentDataId;
  String? createdAt;
  String? updatedAt;
  String? completedAt;

  AllDocumentsModel(
      {this.id,
      this.externalId,
      this.userId,
      this.teamId,
      this.title,
      this.status,
      this.documentDataId,
      this.createdAt,
      this.updatedAt,
      this.completedAt});

  AllDocumentsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    externalId = json['externalId'];
    userId = json['userId'];
    teamId = json['teamId'];
    title = json['title'];
    status = json['status'];
    documentDataId = json['documentDataId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    completedAt = json['completedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['externalId'] = this.externalId;
    data['userId'] = this.userId;
    data['teamId'] = this.teamId;
    data['title'] = this.title;
    data['status'] = this.status;
    data['documentDataId'] = this.documentDataId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['completedAt'] = this.completedAt;
    return data;
  }
}
