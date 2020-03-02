import 'package:flutter/material.dart';
import 'package:demo_redux/screens/homePage/homePageAction.dart';
import 'package:demo_redux/screens/homePage/homePageState.dart';
import 'package:demo_redux/screens/listJob/listJobPage.dart';
import 'package:redux/redux.dart';

final homePageReducer = combineReducers<HomePageState>([
  TypedReducer<HomePageState, NavigateToWidget>(_navigateToWidget),
]);

HomePageState _navigateToWidget(HomePageState state, NavigateToWidget action) {
  Widget activeWidget;
  switch (action.widgetIndex) {
    case 0:
      activeWidget = ListJobPage();
      break;
    case 1:
      activeWidget = Text("Quotes");
      break;
    case 2:
      activeWidget = Text("Purchase Orders");
      break;
    case 3:
      activeWidget = Text("Setting");
      break;
  }
  return state.copyWith(activeWidget: activeWidget);
}