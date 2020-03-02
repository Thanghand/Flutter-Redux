import 'package:flutter/material.dart';
import 'package:demo_redux/screens/listForm/models/listFormItem.dart';

@immutable
class ListFormPageState{
  final List<ListFormItem> forms;

  ListFormPageState({this.forms});

  factory ListFormPageState.initial() {
    return ListFormPageState(forms : []);
  }

  ListFormPageState copyWith({List<ListFormItem> forms}) {
    return ListFormPageState(
        forms: forms ?? this.forms);
  }
}