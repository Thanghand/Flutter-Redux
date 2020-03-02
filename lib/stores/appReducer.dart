import 'package:demo_redux/screens/formDetail/formDetailPageReducer.dart';
import 'package:demo_redux/screens/homePage/homePageReducer.dart';
import 'package:demo_redux/screens/listForm/listFormPageReducer.dart';
import 'package:demo_redux/stores/appState.dart';

AppState appReducer(AppState state, action){
  return AppState(
    homePageState: homePageReducer(state.homePageState, action),
    listFormPageState: listFormPageReducer(state.listFormPageState, action),
    formDetailPageState: listFormDetailPageReducer(state.formDetailPageState, action)
  );
}