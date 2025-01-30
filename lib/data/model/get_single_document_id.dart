class GetSingleDocumentId {
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
  String? recipients;

  GetSingleDocumentId(
      {this.id,
      this.externalId,
      this.userId,
      this.teamId,
      this.title,
      this.status,
      this.documentDataId,
      this.createdAt,
      this.updatedAt,
      this.completedAt,
      this.recipients});

  GetSingleDocumentId.fromJson(Map<String, dynamic> json) {
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
    recipients = json['recipients'];
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
    data['recipients'] = this.recipients;
    return data;
  }
}
