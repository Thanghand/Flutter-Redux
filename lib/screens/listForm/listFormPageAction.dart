import 'package:demo_redux/screens/listForm/models/listFormItem.dart';
import 'package:demo_redux/screens/listForm/repositories/listFormPageRepository.dart';
import 'package:demo_redux/shared/navigator/navigator.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

ThunkAction getListFormsAction() {
  return (Store store) async {
    new Future(() async{
      getListForms().then((loginResponse) {
        store.dispatch(new GetListFormsSuccessAction(loginResponse));
      }, onError: (error) {
        print(error);
      });
    });
  };
}

class GetListFormsSuccessAction{
  final List<ListFormItem> forms;
  GetListFormsSuccessAction(this.forms);
}

class NavigateToFormDetailAction{
  final String formId;
  NavigateToFormDetailAction(this.formId);
}

ThunkAction navigateToFormDetailAction(){
  return (Store store) async {
    new Future(() async{
      NavigateKeys.navKey.currentState.pushNamed('/detail');
      return null;
    });
  };
}