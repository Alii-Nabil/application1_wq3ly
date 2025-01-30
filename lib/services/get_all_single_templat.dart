import 'dart:convert';

import 'package:application_wq3ly/data/model/get_single_template_id.dart';
import 'package:application_wq3ly/helper/api.dart';
import 'package:http/http.dart' as http;

class GetAllSingleTemplat {
  Future<List<GetSingleTemplateId>> getAllSingleTemplat() async {
    List<dynamic> data =
        await Api().get(url: "https://staging.wq3ly.com/api/v1/templates/{id}");

    List<GetSingleTemplateId> AllTemplatList = [];

    for (int i = 0; i < data.length; i++) {
      AllTemplatList.add(
        GetSingleTemplateId.fromJson(data[i]),
      );
    }
    return AllTemplatList;
  }
}
