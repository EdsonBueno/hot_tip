import 'package:flutter/material.dart';
import 'package:hottip/components/currency_text_field.dart';

/// [CurrencyTextField] with a bill amount label and a dollar sign prefix text.
class BillTextField extends StatelessWidget {
  const BillTextField({
    Key key,
    this.onChanged,
  }) : super(key: key);
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return CurrencyTextField(
      decoration: const InputDecoration(
        labelText: 'Bill Amount',
        prefixText: '\$ ',
      ),
      onChanged: (newAmount) {
        if (onChanged != null) {
          onChanged(newAmount);
        }
      },
    );
  }
}
