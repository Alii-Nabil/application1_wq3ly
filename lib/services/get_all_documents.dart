import 'dart:convert';

import 'package:application_wq3ly/data/model/get_alldocuments.dart';
import 'package:application_wq3ly/helper/api.dart';

import 'package:http/http.dart';

class GetAllDocuments {
  Future<List<AllDocumentsModel>> getAllDocuments() async {
    List<dynamic> data =
        await Api().get(url: "https://staging.wq3ly.com/api/v1/documents");

    List<AllDocumentsModel> AllDocumentsList = [];

    for (int i = 0; i < data.length; i++) {
      AllDocumentsList.add(
        AllDocumentsModel.fromJson(data[i]),
      );
    }
    return AllDocumentsList;
  }
}
