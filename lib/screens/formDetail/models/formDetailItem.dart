import 'package:demo_redux/shared/models/entites/baseEntity.dart';

enum FormFieldType{
  InputField,
  Dropdown,
  Datetime,
  Slider
}

enum FieldMode{
  Number,
  Text,
  Phone,
  Email,
  Url
}

class FormDetailItem extends BaseEntity{
  final FormFieldType type;
  final String placeHolder;
  final String title;
  final Option option;
  FormDetailItem({id, name, this.type, this.placeHolder, this.title, this.option}):super(id: id, name: name);

  FormDetailItem.fromJson(Map<String, dynamic> json) : 
    this.type=json['type'],
    this.placeHolder=json['placeHolder'],
    this.title =json['title'], 
    this.option = json[''],
    super.fromJson(json);
}

class Option{
  final FieldMode mode;
  final double min;
  final double max;
  final List<String> items;

  Option({this.mode, this.min, this.max, this.items});
}