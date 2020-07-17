import 'package:flutter/material.dart';

/// [Slider] with a tip percentage label and a value indicator.
class TipPercentageSlider extends StatelessWidget {
  const TipPercentageSlider({
    this.tipPercentage = 15,
    this.onChanged,
    Key key,
  }) : super(key: key);
  final int tipPercentage;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const Text(
          'Tip %:',
        ),
        Slider(
          activeColor: Theme.of(context).primaryColor,
          value: tipPercentage.toDouble(),
          min: 0,
          max: 50,
          onChanged: (newValue) {
            if (onChanged != null) {
              onChanged(newValue.ceil());
            }
          },
        ),
        Text('$tipPercentage%')
      ],
    );
  }
}
