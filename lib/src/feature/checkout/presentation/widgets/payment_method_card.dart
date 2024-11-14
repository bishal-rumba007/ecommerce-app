import 'package:flutter/material.dart';

class PaymentMethodContainer extends StatefulWidget {
  const PaymentMethodContainer(
      {super.key, required this.onPaymentMethodSelected});
  final Function(String) onPaymentMethodSelected;

  @override
  State<PaymentMethodContainer> createState() => _PaymentMethodContainerState();
}

class _PaymentMethodContainerState extends State<PaymentMethodContainer> {
  Map<String, dynamic> paymentMethods = {
    "cod": "Cash on Delivery",
    "card": "Card",
  };
  String selectedPaymentMethod = 'Select Payment Method';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Method",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () {
                _openBottomSheet();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: Icon(Icons.payment,
                  color: Theme.of(context).primaryColor),
              title: Text(
                selectedPaymentMethod,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Payment Method",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              ...paymentMethods.entries
                  .map(
                    (e) => ListTile(
                      onTap: () {
                        widget.onPaymentMethodSelected(
                          e.key
                        );
                        setState(() {
                          selectedPaymentMethod = e.value;
                        });
                        Navigator.pop(context);
                      },
                      title: Text(
                        e.value,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      subtitle: Text(
                        e.key == "cod"
                            ? "Pay when you receive the order"
                            : "Pay online through your credit card",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                      ),
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }
}
