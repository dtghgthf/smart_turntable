import 'package:flutter/material.dart';

import '../constants.dart';

class TextInput extends StatelessWidget {
  late String? hintText;
  late TextInputType? keyboardType;
  late bool obscureText;
  late TextEditingController? controller;

  TextInput(
      {this.hintText, this.keyboardType, this.obscureText = false, this.controller});

  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.getWidth(context) / constantSizedTextFieldSizeHorizontally),
      child: TextField(
        cursorColor: theme.colorScheme.surface,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: theme.colorScheme.error,
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: theme.colorScheme.surface,
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.colorScheme.surface,
              width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          fillColor: theme.colorScheme.surface,
          hintText: hintText,
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
      ),
    );
  }
}
