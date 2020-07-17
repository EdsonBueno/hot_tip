import 'package:flutter/widgets.dart';

/// Displays a sad or happy waiter asset depending on the tip amount.
class MoodyWaiterImage extends StatelessWidget {
  const MoodyWaiterImage({
    this.tipPercentage = 15,
    Key key,
  }) : super(key: key);

  final int tipPercentage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      tipPercentage >= 15 ? 'assets/happy_waiter.png' : 'assets/sad_waiter.png',
      gaplessPlayback: true,
    );
  }
}
