import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

/// [TextField] with a [MoneyMaskedTextController] from the flutter_masked_text
/// package. Useful for currency input.
class CurrencyTextField extends StatefulWidget {
  const CurrencyTextField({
    Key key,
    this.decoration,
    this.onChanged,
  }) : super(key: key);

  final InputDecoration decoration;
  final ValueChanged<double> onChanged;

  @override
  _CurrencyTextFieldState createState() => _CurrencyTextFieldState();
}

class _CurrencyTextFieldState extends State<CurrencyTextField> {
  final _moneyMaskedTextController = MoneyMaskedTextController(
    decimalSeparator: '.',
    thousandSeparator: '',
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _moneyMaskedTextController,
      keyboardType: TextInputType.number,
      decoration: widget.decoration,
      onChanged: (_) {
        if (widget.onChanged != null) {
          widget.onChanged(_moneyMaskedTextController.numberValue);
        }
      },
    );
  }

  @override
  void dispose() {
    _moneyMaskedTextController.dispose();
    super.dispose();
  }
}
