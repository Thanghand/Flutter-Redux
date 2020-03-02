import 'package:demo_redux/screens/formDetail/formDetailPageAction.dart';
import 'package:demo_redux/screens/formDetail/formDetailPageState.dart';
import 'package:redux/redux.dart';

final listFormDetailPageReducer = combineReducers<FormDetailPageState>([
  TypedReducer<FormDetailPageState, GetListFormDetailsSuccessAction>(_getFormsDetailSuccess),
]);

FormDetailPageState _getFormsDetailSuccess(FormDetailPageState state, GetListFormDetailsSuccessAction action) {
  return state.copyWith(formDetails: action.formDetails);
}