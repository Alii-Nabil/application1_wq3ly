import 'package:application_wq3ly/data/model/new_templat_id.dart';
import 'package:application_wq3ly/helper/api.dart';

class PatchRecipientsIdServices {
  Future<NewTemplatIdModel> patchRecipientsIdServices({
    required String token,
    required int documentId,
    required int recipientId,
    required String name,
    required String email,
    required String tokenValue,
    required String role,
    required int signingOrder,
    required String signingUrl,
    required String status,
    required String dateSent,
  }) async {
    Map<String, dynamic> data = await Api().patch(
      Url:
          'https://staging.wq3ly.com/api/v1/documents/\$documentId/recipients/\$recipientId',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {
        'recipientId': recipientId,
        'name': name,
        'email': email,
        'token': tokenValue,
        'role': role,
        'signingOrder': signingOrder,
        'signingUrl': signingUrl,
        'status': status,
        'dateSent': dateSent,
      },
      token: '',
    );
    return NewTemplatIdModel.fromJson(data);
  }
}
