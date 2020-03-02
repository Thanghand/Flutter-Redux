import 'package:demo_redux/shared/models/entites/baseEntity.dart';

class ListFormItem extends BaseEntity{
  ListFormItem({id, name}):super(id: id, name: name);

  ListFormItem.fromJson(Map<String, dynamic> json) 
    : super.fromJson(json);
}