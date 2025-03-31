import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class ConstantSizedButton extends StatelessWidget {
  late Widget child;
  late VoidCallback onPressed;
  late VoidCallback? onLongPress;

  ConstantSizedButton({required this.child, required this.onPressed, this.onLongPress});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll<Size>(Size(ScreenSize.getWidth(context) / constantSizedButtonSize.width, ScreenSize.getHeight(context) / constantSizedButtonSize.height))
      ),
    );
  }
}
