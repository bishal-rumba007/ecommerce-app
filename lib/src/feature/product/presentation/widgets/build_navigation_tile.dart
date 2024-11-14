import 'package:flutter/material.dart';

/// Reusable container for navigation
class BuildNavigationTile extends StatelessWidget {
  const BuildNavigationTile({
    super.key,
    required this.navigationTitle, this.onNavigationTileTap,
  });
  final String navigationTitle;
  final void Function()? onNavigationTileTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNavigationTileTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              navigationTitle,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
