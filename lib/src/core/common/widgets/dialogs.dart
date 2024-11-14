import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

buildErrorDialog(BuildContext context, String message, {String? title}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Icon(
              Icons.warning_rounded,
              size: 70,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title ?? 'Something went wrong!',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    },
  );
}

Future<void> buildLoadingDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
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
            Visibility(
              visible: message.isNotEmpty,
              child: Text(
                message,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    },
  );
}

buildSuccessDialog(BuildContext context, String message, VoidCallback onPressed,
    {String? title}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog.adaptive(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Icon(Icons.check_circle, size: 70, color: AppColor.primary),
            const SizedBox(
              height: 10,
            ),
            Text(
              title ?? 'Operation Successful!!',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
