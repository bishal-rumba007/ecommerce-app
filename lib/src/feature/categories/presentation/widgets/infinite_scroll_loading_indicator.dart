import 'package:flutter/material.dart';

class InfiniteScrollLoadingIndicator extends StatelessWidget {
  const InfiniteScrollLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator.adaptive(strokeWidth: 1.5),
        ),
      ),
    );
  }
}