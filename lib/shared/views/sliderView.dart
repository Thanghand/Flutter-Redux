import 'package:flutter/material.dart';
import 'package:demo_redux/shared/models/formsView/TextFieldDefinition.dart';

Widget sliderView(TextFieldDefinition definition) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(definition.title, textAlign: TextAlign.left,),
      Slider(
        min: definition.options.min,
        max: definition.options.max, onChanged: (double value) {}, value: 5,
      ),
    ],
  );
}
