import 'package:flutter/material.dart';

class DialogBox {
  static loadingDialog(BuildContext context, String title, String message) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 30,
          ),
          Text(
            message,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  static errorDialog(BuildContext context, String title, String message) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          content: Text(
            message,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
