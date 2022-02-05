import 'package:flutter/material.dart';

class FieldLabelComponent extends StatelessWidget {
  final String text;
  const FieldLabelComponent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(text),
    );
  }
}
