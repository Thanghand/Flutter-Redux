import 'dart:convert';
import 'package:http/http.dart';
import 'package:demo_redux/screens/formDetail/models/formDetailItem.dart';

Future<List<FormDetailItem>> getListFormDetails(String id) async {
   Response response = await get('http://localhost:3000/formtest/test/' + id);
    if (response.body != null) {
      List fromsJson = jsonDecode(response.body);
      List<FormDetailItem> formsResult =
          fromsJson.map((form) => new FormDetailItem.fromJson(form)).toList();
      return formsResult;
    }
    return [];
}