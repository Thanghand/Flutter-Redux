import 'package:demo_redux/shared/models/entites/baseFieldDefinition.dart';
import 'package:demo_redux/shared/models/formsView/FieldOptions.dart';

class TextFieldDefinition extends BaseFieldDefinition{
  final TextFieldOptions options;

  TextFieldDefinition({id, name, title, placeholder, subTitle, value, defaultValue, this.options})
  :super(id:id, name:name, title:title, placeholder:placeholder, subTitle:subTitle, value:value, defaultValue:defaultValue);
}