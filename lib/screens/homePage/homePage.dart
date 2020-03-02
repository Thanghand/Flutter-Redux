import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:demo_redux/screens/homePage/homePageViewModel.dart';
import 'package:demo_redux/shared/styles/globalColor.dart';
import 'package:demo_redux/shared/ultilities/colorUtil.dart';
import 'package:demo_redux/stores/appState.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      converter: (store) => HomePageViewModel.fromStore(store),
      builder: (_, viewModel) => Scaffold(
        body: viewModel.activeWidget,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor(GlobalColor.appColor),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Job View'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.broken_image),
              title: Text('Quotes'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart),
              title: Text('Purchase Orders'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gesture),
              title: Text('Settings'),
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: viewModel.changeWidget,
        )
      ),
    );
  }
}
