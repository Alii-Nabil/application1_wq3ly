class GetAllTemplateModel {
  List<Templates>? templates;
  int? totalPages;

  GetAllTemplateModel({this.templates, this.totalPages});

  GetAllTemplateModel.fromJson(Map<String, dynamic> json) {
    if (json['templates'] != null) {
      templates = <Templates>[];
      json['templates'].forEach((v) {
        templates!.add(new Templates.fromJson(v));
      });
    }
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.templates != null) {
      data['templates'] = this.templates!.map((v) => v.toJson()).toList();
    }
    data['totalPages'] = this.totalPages;
    return data;
  }
}

class Templates {
  int? id;
  String? externalId;
  String? type;
  String? title;
  int? userId;
  int? teamId;
  String? templateDocumentDataId;
  String? createdAt;
  String? updatedAt;
  DirectLink? directLink;
  List<Field>? field;
  List<Recipient>? recipient;

  Templates(
      {this.id,
      this.externalId,
      this.type,
      this.title,
      this.userId,
      this.teamId,
      this.templateDocumentDataId,
      this.createdAt,
      this.updatedAt,
      this.directLink,
      this.field,
      this.recipient});

  Templates.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    externalId = json['externalId'];
    type = json['type'];
    title = json['title'];
    userId = json['userId'];
    teamId = json['teamId'];
    templateDocumentDataId = json['templateDocumentDataId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    directLink = json['directLink'] != null
        ? new DirectLink.fromJson(json['directLink'])
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
    if (this.directLink != null) {
      data['directLink'] = this.directLink!.toJson();
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
