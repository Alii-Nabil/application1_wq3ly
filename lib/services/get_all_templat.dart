import 'dart:convert';

import 'package:application_wq3ly/data/model/get_all_templat_model.dart';
import 'package:application_wq3ly/helper/api.dart';
import 'package:http/http.dart' as http;

class GetAllTemplat {
  Future<List<GetAllTemplateModel>> getAllTemplat() async {
    List<dynamic> data =
        await Api().get(url: "https://staging.wq3ly.com/api/v1/templates");

    List<GetAllTemplateModel> AllTemplatList = [];

    for (int i = 0; i < data.length; i++) {
      AllTemplatList.add(
        GetAllTemplateModel.fromJson(data[i]),
      );
    }
    return AllTemplatList;
  }
}
