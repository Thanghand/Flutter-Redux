import 'package:flutter/material.dart';
import 'package:demo_redux/screens/formDetail/models/formDetailItem.dart';

@immutable
class FormDetailPageState{
  final List<FormDetailItem> formDetails;
  final String formId;

  FormDetailPageState({this.formDetails, this.formId});

  factory FormDetailPageState.initial() {
    return FormDetailPageState(formDetails : [], formId: "0");
  }

  FormDetailPageState copyWith({List<FormDetailItem> formDetails}) {
    return FormDetailPageState(
        formDetails: formDetails ?? this.formDetails,
        formId: formId ?? this.formId);
  }
}