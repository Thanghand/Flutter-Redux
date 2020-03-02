import 'package:flutter/material.dart';
import 'package:demo_redux/screens/listForm/listFormPageViewModel.dart';
import 'package:demo_redux/screens/listForm/models/listFormItem.dart';

Widget formItemTemplate(ListFormItem formItem, ListFormPageViewModel vm) =>
    GestureDetector(
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: ListTile(
          onTap: (){
            vm.navigateToFormDetail(formItem.id);
          },
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  formItem.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
