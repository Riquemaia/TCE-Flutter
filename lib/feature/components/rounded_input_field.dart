import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  const RoundedInputField({
    Key? key,
    required this.icon,
    this.hintText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText.toUpperCase(),
          border: InputBorder.none,
          icon: icon,
        ),
      ),
    );
  }
}
