import 'package:flutter/material.dart';
import 'package:demo_redux/shared/models/formsView/FieldOptions.dart';
import 'package:demo_redux/shared/models/formsView/TextFieldDefinition.dart';

//For text fields: text, number, phone, email, url
Widget textBoxView(TextFieldDefinition definition) {
  var keyboardInput = TextInputType.text;
  switch (definition.options.textFieldType) {
    case TextFieldType.Number:
      keyboardInput = TextInputType.number;
      break;
    case TextFieldType.Phone:
      keyboardInput = TextInputType.phone;
      break;
    case TextFieldType.Email:
      keyboardInput = TextInputType.emailAddress;
      break;
    case TextFieldType.Url:
      keyboardInput = TextInputType.url;
      break;
    default:
      keyboardInput = TextInputType.text;
      break;
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(definition.title, textAlign: TextAlign.left,),
      TextFormField(
        keyboardType: keyboardInput,
        decoration: InputDecoration(labelText: definition.placeholder),
      ),
    ],
  );
}
