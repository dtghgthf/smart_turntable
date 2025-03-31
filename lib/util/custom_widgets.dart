import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget WavingProgressIndicator() {
  return Center(
    child: SpinKitWave(
        itemBuilder: (context, index) {
          return const SizedBox(height: 20, width: 5, child: ColoredBox(color: Colors.black),);
        }
    ),
  );
}

void showErrorSnackbar(BuildContext context, Object e) {
  ThemeData theme = Theme.of(context);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: theme.colorScheme.error,
    content: Text(e is String ? e : e.toString().split("] ")[1], style: theme.textTheme.bodySmall!.apply(color: theme.colorScheme.onError)),
  ));
}