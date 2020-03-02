import 'package:flutter/material.dart';
import 'package:demo_redux/screens/formDetail/utils/mappingEntityToForm.dart';

class FormDetail extends StatefulWidget {
  @override
  _FormDetailState createState() => _FormDetailState();
}

class _FormDetailState extends State<FormDetail> {
  //Fake data
  var widgets = mapEntityToField();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Details'),
        ),
        body: ListView(
          children: widgets,
        ));
  }
}
