import 'package:application_wq3ly/data/model/new_document_templat_post.dart';
import 'package:application_wq3ly/helper/api.dart';

class NewPostTemplate {
  Future<NewDocumentTemplatPostModel> newPostTemplate({
    required String token,
    required String title,
    required String externalId,
    required List<Map<String, dynamic>> recipients,
    required String subject,
    required String message,
    required String timezone,
    required String dateFormat,
    required String redirectUrl,
    required String signingOrder,
    required String globalAccessAuth,
    required String globalActionAuth,
    required String additionalProp1,
    required String additionalProp2,
    required String additionalProp3,
  }) async {
    Map<String, dynamic> data = await Api().post(
        Url:
            'https://staging.wq3ly.com/api/v1/templates/{templateId}/generate-document',
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: {
          "title": title,
          "externalId": externalId,
          "documentId": 0,
          "recipients": recipients
              .map((recipient) => {
                    "recipientId": recipient['recipientId'] ?? 0,
                    "name": recipient['name'] ?? 'string',
                    "email": recipient['email'] ?? 'user@example.com',
                    "token": recipient['token'] ?? 'string',
                    "role": recipient['role'] ?? 'CC',
                    "signingOrder": recipient['signingOrder'] ?? 0,
                    "signingUrl": recipient['signingUrl'] ?? 'string',
                  })
              .toList(),
          "meta": {
            "subject": subject,
            "message": message,
            "timezone": timezone,
            "dateFormat": dateFormat,
            "redirectUrl": redirectUrl,
            "signingOrder": signingOrder,
          },
          "authOptions": {
            "globalAccessAuth": globalAccessAuth,
            "globalActionAuth": globalActionAuth,
          },
          "formValues": {
            "additionalProp1": additionalProp1,
            "additionalProp2": additionalProp2,
            "additionalProp3": additionalProp3,
          },
        });

    return NewDocumentTemplatPostModel.fromJson(data);
  }
}
