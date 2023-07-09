import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:InfoTrendz_apps/shared/theme.dart';

void showCustomAlertDialog(BuildContext context, String message) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$message'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      });
}

void showCustomSnackBar(
  BuildContext context,
  String message,
) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: orangeColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}
