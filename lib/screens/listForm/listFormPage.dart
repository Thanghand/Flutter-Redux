import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:demo_redux/screens/listForm/listFormPageAction.dart';
import 'package:demo_redux/screens/listForm/listFormPageViewModel.dart';
import 'package:demo_redux/screens/listForm/views/formItemTemplate.dart';
import 'package:demo_redux/stores/appState.dart';

class ListForm extends StatefulWidget {
  ListForm({Key key}) : super(key: key);

  @override
  _ListFormState createState() => _ListFormState();
}

class _ListFormState extends State<ListForm> {
  Future _getListData(ListFormPageViewModel vm) async {
    await vm.getListForms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Forms')),
      body: StoreConnector<AppState, ListFormPageViewModel>(
          converter: (store) => ListFormPageViewModel.fromStore(store),
          onInit: (store) {
            store.dispatch(getListFormsAction());
          },
          builder: (_, viewModel) => RefreshIndicator(
                child: ListView(
                  children: viewModel.forms
                      .map((form) => formItemTemplate(form, viewModel))
                      .toList(),
                ),
                onRefresh: ()=>_getListData(viewModel),
              )),
    );
  }
}
