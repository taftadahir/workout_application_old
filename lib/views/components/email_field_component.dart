import 'package:flutter/material.dart';
import 'package:workout_application_development/views/components/field_label_component.dart';

class EmailFieldComponent extends StatelessWidget {
  const EmailFieldComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String labelText = 'Email';
    String hintText = 'Enter your mail';

    return TextFormField(
      // Null mean everything is fine ( no error )
      validator: (value) => null,
      keyboardType: TextInputType.emailAddress,
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
