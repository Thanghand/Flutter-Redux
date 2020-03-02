enum TextFieldType{
  Number,
  Text,
  Phone,
  Email,
  Url
}

class TextFieldOptions{
  final TextFieldType textFieldType;

  //For number, slider
  final double min;
  final double max;

  TextFieldOptions({this.textFieldType, this.min, this.max}); 
}