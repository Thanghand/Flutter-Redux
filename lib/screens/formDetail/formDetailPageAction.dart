import 'package:demo_redux/screens/formDetail/models/formDetailItem.dart';
import 'package:demo_redux/screens/formDetail/repositories/formDetailPageRepository.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

ThunkAction getListFormDetailsAction(String formId) {
  return (Store store) async {
    new Future(() async{
      getListFormDetails(formId).then((loginResponse) {
        store.dispatch(new GetListFormDetailsSuccessAction(loginResponse));
      }, onError: (error) {
        print(error);
      });
    });
  };
}

class GetListFormDetailsSuccessAction{
  final List<FormDetailItem> formDetails;
  GetListFormDetailsSuccessAction(this.formDetails);
}