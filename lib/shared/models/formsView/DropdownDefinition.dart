import 'package:demo_redux/shared/models/entites/baseFieldDefinition.dart';

class DropdownDefinition extends BaseFieldDefinition{
  final List<String> items;

  DropdownDefinition({id, name, title, placeholder, subTitle, value, defaultValue, this.items})
  :super(id:id, name:name, title:title, placeholder:placeholder, subTitle:subTitle, value:value, defaultValue:defaultValue);
}