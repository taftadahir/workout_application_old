import 'package:flutter/material.dart';
import 'package:workout_application_development/views/components/field_label_component.dart';

class PasswordFieldComponent extends StatefulWidget {
  const PasswordFieldComponent({Key? key}) : super(key: key);

  @override
  _PasswordFieldComponentState createState() => _PasswordFieldComponentState();
}

class _PasswordFieldComponentState extends State<PasswordFieldComponent> {
  bool obscurePassword = true;
  String obscuringCharacter = '*';
  String labelText = 'Password field';
  String hintText = 'Enter your password';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Null mean everything is fine ( no error )
      validator: (value) => null,
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscurePassword,
      obscuringCharacter: obscuringCharacter,
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
