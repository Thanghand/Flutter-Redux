import 'package:flutter/material.dart';
import 'package:demo_redux/shared/styles/globalColor.dart';
import 'package:demo_redux/shared/ultilities/colorUtil.dart';

class ListJobPage extends StatelessWidget {
  const ListJobPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: HexColor("016CA3"),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: HexColor(GlobalColor.appColor),
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Center(
                        child: Text("T"),
                      )),
                      Container(

                      )
                ],
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: "Search Job..."))
            ],
          ),
        )
      ],
    );
  }
}
