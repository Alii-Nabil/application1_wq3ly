class NewTemplatIdModel {
  int? recipientId;
  String? name;
  String? email;
  String? token;
  String? role;
  int? signingOrder;
  String? signingUrl;
  String? status;
  String? dateSent;

  NewTemplatIdModel({
    this.recipientId,
    this.name,
    this.email,
    this.token,
    this.role,
    this.signingOrder,
    this.signingUrl,
    this.status,
    this.dateSent,
  });

  NewTemplatIdModel.fromJson(Map<String, dynamic> json) {
    recipientId = json['recipientId'];
    name = json['name'];
    email = json['email'];
    token = json['token'];
    role = json['role'];
    signingOrder = json['signingOrder'];
    signingUrl = json['signingUrl'];
    status = json['status'];
    dateSent = json['dateSent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['recipientId'] = recipientId;
    data['name'] = name;
    data['email'] = email;
    data['token'] = token;
    data['role'] = role;
    data['signingOrder'] = signingOrder;
    data['signingUrl'] = signingUrl;
    data['status'] = status;
    data['dateSent'] = dateSent;
    return data;
  }
}
