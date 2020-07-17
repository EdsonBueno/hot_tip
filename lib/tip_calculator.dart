import 'package:flutter/material.dart';
import 'package:hottip/components/bill_text_field.dart';
import 'package:hottip/components/moody_waiter_image.dart';
import 'package:hottip/components/tip_percentage_slider.dart';

class TipCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  int _tipPercentage = 15;
  double _billAmount = 0;
  double get _tipAmount => _billAmount * (_tipPercentage / 100);
  double get _totalAmount => _billAmount + _tipAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MoodyWaiterImage(tipPercentage: _tipPercentage),
        BillTextField(
          onChanged: (newAmount) {
            setState(() {
              _billAmount = newAmount;
            });
          },
        ),
        SizedBox(
          height: 15,
        ),
        TipPercentageSlider(
          tipPercentage: _tipPercentage,
          onChanged: (newTipPercentage) {
            setState(() {
              _tipPercentage = newTipPercentage;
            });
          },
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Tip Amount: \$${_tipAmount.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Total: \$${_totalAmount.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
