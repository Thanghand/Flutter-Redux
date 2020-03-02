import 'package:demo_redux/screens/listForm/listFormPageAction.dart';
import 'package:demo_redux/screens/listForm/listFormPageState.dart';
import 'package:demo_redux/shared/navigator/navigator.dart';
import 'package:redux/redux.dart';

final listFormPageReducer = combineReducers<ListFormPageState>([
  TypedReducer<ListFormPageState, GetListFormsSuccessAction>(_getListFormsSuccess),
  TypedReducer<ListFormPageState, NavigateToFormDetailAction>(_navigateToFormDetailAction),
]);

ListFormPageState _getListFormsSuccess(ListFormPageState state, GetListFormsSuccessAction action) {
  return state.copyWith(forms: action.forms);
}

ListFormPageState _navigateToFormDetailAction(ListFormPageState state, NavigateToFormDetailAction action) {
  NavigateKeys.navKey.currentState.pushNamed('/detail');
  return state.copyWith();
}

