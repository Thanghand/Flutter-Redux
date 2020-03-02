import 'package:flutter/material.dart';
import 'package:demo_redux/screens/formDetail/formDetailPageState.dart';
import 'package:demo_redux/screens/homePage/homePageState.dart';
import 'package:demo_redux/screens/listForm/listFormPageState.dart';

@immutable
class AppState {
  final HomePageState homePageState;
  final ListFormPageState listFormPageState;
  final FormDetailPageState formDetailPageState;

  AppState({@required this.homePageState, @required this.listFormPageState, @required this.formDetailPageState});

  factory AppState.initial() {
    return AppState(
        homePageState: HomePageState.initial(),
        listFormPageState: ListFormPageState.initial(),
        formDetailPageState: FormDetailPageState.initial(),
    );
  }

  AppState copyWith({
    HomePageState homePageState,
    ListFormPageState listFormPageState,
    FormDetailPageState formDetailPageState
  }) {
    return AppState(
      homePageState: homePageState ?? this.homePageState,
      listFormPageState: listFormPageState ?? this.listFormPageState,
      formDetailPageState: formDetailPageState ?? this.formDetailPageState
    );
  }
}
