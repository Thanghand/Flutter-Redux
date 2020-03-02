import 'package:demo_redux/screens/formDetail/formDetailPageAction.dart';
import 'package:demo_redux/screens/formDetail/models/formDetailItem.dart';
import 'package:demo_redux/stores/appState.dart';
import 'package:redux/redux.dart';

class FormDetailPageViewModel {
  //Props
  final List<FormDetailItem> formDetails;
  final String formId;
  
  //Events
  final Function(String formId) getListFormDetails;

  FormDetailPageViewModel({this.formDetails, this.formId, this.getListFormDetails});

  static FormDetailPageViewModel fromStore(Store<AppState> store) {
    return FormDetailPageViewModel(
        formDetails: store.state.formDetailPageState.formDetails,
        getListFormDetails: (formId) => store.dispatch(getListFormDetailsAction(formId)),
    );
  }
}
