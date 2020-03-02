import 'dart:convert';
import 'package:http/http.dart';
import 'package:demo_redux/screens/listForm/models/listFormItem.dart';

Future<List<ListFormItem>> getListForms() async {
   Response response = await get('http://localhost:3000/formtest/test');
    if (response.body != null) {
      List fromsJson = jsonDecode(response.body);
      List<ListFormItem> formsResult =
          fromsJson.map((form) => new ListFormItem.fromJson(form)).toList();
      return formsResult;
    }
    return [];
}