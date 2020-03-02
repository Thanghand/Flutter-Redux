import 'package:flutter/material.dart';
import 'package:demo_redux/shared/models/formsView/DropdownDefinition.dart';

Widget dropdownView(DropdownDefinition definition) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        definition.title,
        textAlign: TextAlign.left,
      ),
      DropdownButton<String>(
        items: definition.items.map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    ],
  );
}
