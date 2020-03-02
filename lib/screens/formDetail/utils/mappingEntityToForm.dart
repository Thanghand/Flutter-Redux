import 'package:flutter/material.dart';
import 'package:demo_redux/screens/formDetail/models/formDetailItem.dart';
import 'package:demo_redux/shared/models/formsView/DropdownDefinition.dart';
import 'package:demo_redux/shared/models/formsView/FieldOptions.dart';
import 'package:demo_redux/shared/models/formsView/TextFieldDefinition.dart';
import 'package:demo_redux/shared/views/dropdownView.dart';
import 'package:demo_redux/shared/views/sliderView.dart';
import 'package:demo_redux/shared/views/textBoxView.dart';

List<FormDetailItem> getFromData = [
  FormDetailItem(
      id: "1",
      name: "Text field",
      title: "Text field",
      placeHolder: "Please input text",
      type: FormFieldType.InputField,
      option: Option(mode: FieldMode.Text)),
  FormDetailItem(
      id: "2",
      name: "Number field",
      title: "Number field",
      placeHolder: "Please input number",
      type: FormFieldType.InputField,
      option: Option(mode: FieldMode.Number)),
  FormDetailItem(
      id: "3",
      name: "Email field",
      title: "Email field",
      placeHolder: "Please input email",
      type: FormFieldType.InputField,
      option: Option(mode: FieldMode.Email)),
  FormDetailItem(
      id: "4",
      name: "Phone field",
      title: "Phone field",
      placeHolder: "Please input phone",
      type: FormFieldType.InputField,
      option: Option(mode: FieldMode.Phone)),
  FormDetailItem(
      id: "6",
      name: "Slider",
      title: "Slider",
      placeHolder: "Slider",
      type: FormFieldType.Slider,
      option: Option(min: 0, max: 100)),
  FormDetailItem(
      id: "7",
      name: "Dropdown",
      title: "Dropdown",
      placeHolder: "Dropdown",
      type: FormFieldType.Dropdown,
      option: Option(items: ["Acb", "Vietcombank", "Techcombank", "Vp Bank"])),
];

List<Widget> mapEntityToField() {
  List<Widget> returnWidgets = [];
  getFromData.forEach((entity) {
    Widget view = Text('Not Found');
    switch (entity.type) {
      case FormFieldType.InputField:
        switch (entity.option.mode) {
          case FieldMode.Email:
            var definition = TextFieldDefinition(
                title: entity.title,
                placeholder: entity.placeHolder,
                options: TextFieldOptions(textFieldType: TextFieldType.Email));
            view = textBoxView(definition);
            break;
          case FieldMode.Number:
            var definition = TextFieldDefinition(
                title: entity.title,
                placeholder: entity.placeHolder,
                options: TextFieldOptions(textFieldType: TextFieldType.Number));
            view = textBoxView(definition);
            break;
          case FieldMode.Text:
            var definition = TextFieldDefinition(
                title: entity.title,
                placeholder: entity.placeHolder,
                options: TextFieldOptions(textFieldType: TextFieldType.Text));
            view = textBoxView(definition);
            break;
          case FieldMode.Phone:
            var definition = TextFieldDefinition(
                title: entity.title,
                placeholder: entity.placeHolder,
                options: TextFieldOptions(textFieldType: TextFieldType.Phone));
            view = textBoxView(definition);
            break;
          case FieldMode.Url:
            var definition = TextFieldDefinition(
                title: entity.title,
                placeholder: entity.placeHolder,
                options: TextFieldOptions(textFieldType: TextFieldType.Url));
            view = textBoxView(definition);
            break;
        }
        break;
      case FormFieldType.Slider:
        var definition = TextFieldDefinition(
            title: entity.title,
            options: TextFieldOptions(
                min: entity.option.min, max: entity.option.max));
        view = sliderView(definition);
        break;
      case FormFieldType.Dropdown:
        var definition = DropdownDefinition(
            title: entity.title,
            items: entity.option.items);
        view = dropdownView(definition);
        break;
      default:
    }
    returnWidgets.add(view);
  });
  return returnWidgets;
}
