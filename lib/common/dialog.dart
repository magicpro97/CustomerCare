import 'dart:io';

import 'package:customer_care/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> showDeleteDialog(
  BuildContext context,
  String title,
  String content,
) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(
                  S.of(context).ok,
                ),
                isDestructiveAction: true,
              ),
              CupertinoDialogAction(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  S.of(context).cancel,
                ),
              ),
            ],
          );
        });
  }

  return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text(S.of(context).remove_customer),
          content: Text(S.of(context).remove_customer_message),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                S.of(context).ok,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(S.of(context).cancel),
            ),
          ],
        );
      });
}
