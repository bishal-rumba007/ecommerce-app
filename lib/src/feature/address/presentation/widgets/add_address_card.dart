import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddAddressCard extends StatelessWidget {
  const AddAddressCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 84,
      child: InkWell(
        onTap: () {
          context.push('/create-address');
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: theme.colorScheme.primary
                  .withOpacity(0.4),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(height: 4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Add \nAddress",
                    style: theme.textTheme.labelMedium
                        ?.copyWith(color: theme.colorScheme.primary),
                        textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
