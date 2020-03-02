import 'package:flutter/material.dart';

class BaseEntity{
  final String name;
  final String id;
  
  BaseEntity({@required this.name, @required this.id});

  BaseEntity.fromJson(Map<String, dynamic> json)
      : this.id = json['_id'],
        this.name = json['name'];
}
