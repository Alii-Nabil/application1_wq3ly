import 'dart:convert';

import 'package:application_wq3ly/data/model/get_single_document_id.dart';
import 'package:application_wq3ly/helper/api.dart';
import 'package:http/http.dart' as http;

class GetSingleDocument {
  Future<List<GetSingleDocumentId>> getAllDocuments() async {
    List<dynamic> data =
        await Api().get(url: "https://staging.wq3ly.com/api/v1/documents/{id}");

    List<GetSingleDocumentId> AllDocumentsList = [];

    for (int i = 0; i < data.length; i++) {
      AllDocumentsList.add(
        GetSingleDocumentId.fromJson(data[i]),
      );
    }
    return AllDocumentsList;
  }
}
