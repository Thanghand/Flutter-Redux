
import 'package:flutter/material.dart';

@immutable
class HomePageState{
  final Widget activeWidget;

  HomePageState({this.activeWidget});

  factory HomePageState.initial() {
    return HomePageState(activeWidget: Container());
  }

  HomePageState copyWith({Widget activeWidget}) {
    return HomePageState(
        activeWidget: activeWidget ?? this.activeWidget);
  }
}