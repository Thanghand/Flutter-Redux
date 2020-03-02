import 'package:demo_redux/screens/listForm/listFormPageAction.dart';
import 'package:demo_redux/screens/listForm/models/listFormItem.dart';
import 'package:demo_redux/stores/appState.dart';
import 'package:redux/redux.dart';

class ListFormPageViewModel {
  //Props
  final List<ListFormItem> forms;

  //Events
  final Function() getListForms;
  final Function(String formId) navigateToFormDetail;

  ListFormPageViewModel({this.forms, this.getListForms, this.navigateToFormDetail});

  static ListFormPageViewModel fromStore(Store<AppState> store) {
    return ListFormPageViewModel(
        forms: store.state.listFormPageState.forms,
        getListForms: () => store.dispatch(getListFormsAction()),
        navigateToFormDetail: (formId) => store.dispatch(NavigateToFormDetailAction(formId))
    );
  }
}
