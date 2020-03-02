import 'package:demo_redux/shared/models/entites/baseEntity.dart';

class BaseFieldDefinition extends BaseEntity{
  final String title;
  final String placeholder;
  final String subTitle;
  final dynamic value;
  final dynamic defaultValue;

  BaseFieldDefinition({id, name, this.title, this.placeholder, this.subTitle, this.value, this.defaultValue}):super(id:id, name:name);
}