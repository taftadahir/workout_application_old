import 'package:flutter/material.dart';
import 'package:workout_application_development/views/components/field_label_component.dart';

class TextFieldComponent extends StatelessWidget {
  final String labelText;
  final String hintText;
  const TextFieldComponent({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Null mean everything is fine ( no error )
      validator: (value) => null,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        label: FieldLabelComponent(
          text: labelText,
        ),
        hintText: hintText,
        helperText: '',
        errorText: 'Null',
      ),
    );
  }
}
