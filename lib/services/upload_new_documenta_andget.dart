import 'package:application_wq3ly/data/model/upload_newdocument.dart';
import 'package:application_wq3ly/helper/api.dart';

class UploadNewDocumentaAndget {
  Future<UploadNewDocumentaAndgetModel> uploadNewDocument({
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
      Url: 'https://staging.wq3ly.com/api/v1/documents',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {
        "title": title,
        "externalId": externalId,
        "recipients": recipients,
        "meta": {
          "subject": subject,
          "message": message,
          "timezone": timezone,
          "dateFormat": dateFormat,
          "redirectUrl": redirectUrl,
          "signingOrder": signingOrder
        },
        "authOptions": {
          "globalAccessAuth": globalAccessAuth,
          "globalActionAuth": globalActionAuth
        },
        "formValues": {
          "additionalProp1": additionalProp1,
          "additionalProp2": additionalProp2,
          "additionalProp3": additionalProp3
        }
      },
    );
    return UploadNewDocumentaAndgetModel.fromJson(data);
  }
}
