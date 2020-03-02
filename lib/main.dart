import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:demo_redux/screens/formDetail/formDetailPage.dart';
import 'package:demo_redux/screens/homePage/homePage.dart';
import 'package:demo_redux/shared/navigator/navigator.dart';
import 'package:demo_redux/stores/appStore.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  final store = createStore();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Main Application',
        navigatorKey: NavigateKeys.navKey,
        routes: {
          '/': (context){
            return HomePage();
          },
          '/detail': (context){
            return FormDetail();
          }
        },
      ),
    );
  }
}
