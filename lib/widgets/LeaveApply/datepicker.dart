import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onchanged;
  //final Function? onchanged;
  final void Function()? saved;
  final void Function()? validator;
  final String? title;

  const CustomDatePicker(
      {super.key,
      this.controller,
      this.onchanged,
      this.saved,
      this.validator,
      this.title});
  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.date,
      dateMask: 'dd/MM/yyyy',
      controller: controller,
      //initialValue: _initialValue,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      calendarTitle: "$title",
      confirmText: "Confirm",
      enableSuggestions: true,
      //locale: Locale('en', 'US'),
      onChanged: (value){},
      validator: (validator){},
      onSaved: (data){},
    );
  }
}
