import 'package:demo_redux/stores/appReducer.dart';
import 'package:demo_redux/stores/appState.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );
}