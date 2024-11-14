import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class EmptyAddress extends StatelessWidget {
  const EmptyAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: SvgPicture.asset(
                "assets/images/no_result.svg",
              ),
            ),
            Text(
              "No Address Found!",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Please Add Address to Continue Shopping",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,  
                  ),
            ),
            const SizedBox(
              height: 40,
            ),
            BuildButton(
              onPressed: () {
                context.push('/create-address');
              },
              buttonWidget: Text("Add Address"),
            ),
          ],
        ),
      ),
    );
  }
}