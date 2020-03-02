import 'package:flutter/material.dart';
import 'package:demo_redux/screens/homePage/homePageAction.dart';
import 'package:demo_redux/stores/appState.dart';
import 'package:redux/redux.dart';

class HomePageViewModel {
  //Props
  final Widget activeWidget;
  final int selectedIndex;

  //Events
  final Function(int widgetIndex) changeWidget;

  HomePageViewModel({this.activeWidget, this.selectedIndex, this.changeWidget});

  static HomePageViewModel fromStore(Store<AppState> store) {
    return HomePageViewModel(
        activeWidget: store.state.homePageState.activeWidget,
        changeWidget: (widget){store.dispatch(NavigateToWidget(widgetIndex: widget));}
    );
  }
}
