class NewDocumentTemplatPostModel {
  String? title;
  String? externalId;
  int? documentId;
  List<Recipient>? recipients;
  Meta? meta;
  AuthOptions? authOptions;
  FormValues? formValues;

  NewDocumentTemplatPostModel({
    this.title,
    this.externalId,
    this.documentId,
    this.recipients,
    this.meta,
    this.authOptions,
    this.formValues,
  });

  NewDocumentTemplatPostModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    externalId = json['externalId'];
    documentId = json['documentId'];
    if (json['recipients'] != null) {
      recipients = <Recipient>[];
      json['recipients'].forEach((v) {
        recipients!.add(Recipient.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    authOptions = json['authOptions'] != null
        ? AuthOptions.fromJson(json['authOptions'])
        : null;
    formValues = json['formValues'] != null
        ? FormValues.fromJson(json['formValues'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['externalId'] = externalId;
    data['documentId'] = documentId;
    if (recipients != null) {
      data['recipients'] = recipients!.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (authOptions != null) {
      data['authOptions'] = authOptions!.toJson();
    }
    if (formValues != null) {
      data['formValues'] = formValues!.toJson();
    }
    return data;
  }
}

class Recipient {
  int? recipientId;
  String? name;
  String? email;
  String? token;
  String? role;
  int? signingOrder;
  String? signingUrl;

  Recipient({
    this.recipientId,
    this.name,
    this.email,
    this.token,
    this.role,
    this.signingOrder,
    this.signingUrl,
  });

  Recipient.fromJson(Map<String, dynamic> json) {
    recipientId = json['recipientId'];
    name = json['name'];
    email = json['email'];
    token = json['token'];
    role = json['role'];
    signingOrder = json['signingOrder'];
    signingUrl = json['signingUrl'];
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
    return data;
  }
}

class Meta {
  String? subject;
  String? message;
  String? timezone;
  String? dateFormat;
  String? redirectUrl;
  String? signingOrder;

  Meta({
    this.subject,
    this.message,
    this.timezone,
    this.dateFormat,
    this.redirectUrl,
    this.signingOrder,
  });

  Meta.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    message = json['message'];
    timezone = json['timezone'];
    dateFormat = json['dateFormat'];
    redirectUrl = json['redirectUrl'];
    signingOrder = json['signingOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subject'] = subject;
    data['message'] = message;
    data['timezone'] = timezone;
    data['dateFormat'] = dateFormat;
    data['redirectUrl'] = redirectUrl;
    data['signingOrder'] = signingOrder;
    return data;
  }
}

class AuthOptions {
  String? globalAccessAuth;
  String? globalActionAuth;

  AuthOptions({
    this.globalAccessAuth,
    this.globalActionAuth,
  });

  AuthOptions.fromJson(Map<String, dynamic> json) {
    globalAccessAuth = json['globalAccessAuth'];
    globalActionAuth = json['globalActionAuth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['globalAccessAuth'] = globalAccessAuth;
    data['globalActionAuth'] = globalActionAuth;
    return data;
  }
}

class FormValues {
  String? additionalProp1;
  String? additionalProp2;
  String? additionalProp3;

  FormValues({
    this.additionalProp1,
    this.additionalProp2,
    this.additionalProp3,
  });

  FormValues.fromJson(Map<String, dynamic> json) {
    additionalProp1 = json['additionalProp1'];
    additionalProp2 = json['additionalProp2'];
    additionalProp3 = json['additionalProp3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['additionalProp1'] = additionalProp1;
    data['additionalProp2'] = additionalProp2;
    data['additionalProp3'] = additionalProp3;
    return data;
  }
}
