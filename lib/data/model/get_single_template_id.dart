class GetSingleTemplateId {
  int? id;
  String? externalId;
  String? type;
  String? title;
  int? userId;
  int? teamId;
  String? templateDocumentDataId;
  String? createdAt;
  String? updatedAt;
  TemplateMeta? templateMeta;
  DirectLink? directLink;
  TemplateDocumentData? templateDocumentData;
  List<Field>? field;
  List<Recipient>? recipient;

  GetSingleTemplateId(
      {this.id,
      this.externalId,
      this.type,
      this.title,
      this.userId,
      this.teamId,
      this.templateDocumentDataId,
      this.createdAt,
      this.updatedAt,
      this.templateMeta,
      this.directLink,
      this.templateDocumentData,
      this.field,
      this.recipient});

  GetSingleTemplateId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    externalId = json['externalId'];
    type = json['type'];
    title = json['title'];
    userId = json['userId'];
    teamId = json['teamId'];
    templateDocumentDataId = json['templateDocumentDataId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    templateMeta = json['templateMeta'] != null
        ? new TemplateMeta.fromJson(json['templateMeta'])
        : null;
    directLink = json['directLink'] != null
        ? new DirectLink.fromJson(json['directLink'])
        : null;
    templateDocumentData = json['templateDocumentData'] != null
        ? new TemplateDocumentData.fromJson(json['templateDocumentData'])
        : null;
    if (json['Field'] != null) {
      field = <Field>[];
      json['Field'].forEach((v) {
        field!.add(new Field.fromJson(v));
      });
    }
    if (json['Recipient'] != null) {
      recipient = <Recipient>[];
      json['Recipient'].forEach((v) {
        recipient!.add(new Recipient.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['externalId'] = this.externalId;
    data['type'] = this.type;
    data['title'] = this.title;
    data['userId'] = this.userId;
    data['teamId'] = this.teamId;
    data['templateDocumentDataId'] = this.templateDocumentDataId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.templateMeta != null) {
      data['templateMeta'] = this.templateMeta!.toJson();
    }
    if (this.directLink != null) {
      data['directLink'] = this.directLink!.toJson();
    }
    if (this.templateDocumentData != null) {
      data['templateDocumentData'] = this.templateDocumentData!.toJson();
    }
    if (this.field != null) {
      data['Field'] = this.field!.map((v) => v.toJson()).toList();
    }
    if (this.recipient != null) {
      data['Recipient'] = this.recipient!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TemplateMeta {
  String? id;
  String? subject;
  String? message;
  String? timezone;
  String? dateFormat;
  int? templateId;
  String? redirectUrl;
  String? signingOrder;

  TemplateMeta(
      {this.id,
      this.subject,
      this.message,
      this.timezone,
      this.dateFormat,
      this.templateId,
      this.redirectUrl,
      this.signingOrder});

  TemplateMeta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    message = json['message'];
    timezone = json['timezone'];
    dateFormat = json['dateFormat'];
    templateId = json['templateId'];
    redirectUrl = json['redirectUrl'];
    signingOrder = json['signingOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject'] = this.subject;
    data['message'] = this.message;
    data['timezone'] = this.timezone;
    data['dateFormat'] = this.dateFormat;
    data['templateId'] = this.templateId;
    data['redirectUrl'] = this.redirectUrl;
    data['signingOrder'] = this.signingOrder;
    return data;
  }
}

class DirectLink {
  String? token;
  bool? enabled;

  DirectLink({this.token, this.enabled});

  DirectLink.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['enabled'] = this.enabled;
    return data;
  }
}

class TemplateDocumentData {
  String? id;
  String? type;
  String? data;

  TemplateDocumentData({this.id, this.type, this.data});

  TemplateDocumentData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['data'] = this.data;
    return data;
  }
}

class Field {
  int? id;
  int? recipientId;
  String? type;
  int? page;
  String? positionX;
  String? positionY;
  String? width;
  String? height;

  Field(
      {this.id,
      this.recipientId,
      this.type,
      this.page,
      this.positionX,
      this.positionY,
      this.width,
      this.height});

  Field.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    recipientId = json['recipientId'];
    type = json['type'];
    page = json['page'];
    positionX = json['positionX'];
    positionY = json['positionY'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['recipientId'] = this.recipientId;
    data['type'] = this.type;
    data['page'] = this.page;
    data['positionX'] = this.positionX;
    data['positionY'] = this.positionY;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Recipient {
  int? id;
  String? email;
  String? name;
  int? signingOrder;
  String? authOptions;
  String? role;

  Recipient(
      {this.id,
      this.email,
      this.name,
      this.signingOrder,
      this.authOptions,
      this.role});

  Recipient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    signingOrder = json['signingOrder'];
    authOptions = json['authOptions'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['signingOrder'] = this.signingOrder;
    data['authOptions'] = this.authOptions;
    data['role'] = this.role;
    return data;
  }
}
