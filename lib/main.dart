import 'package:flutter/material.dart';
import 'package:hottip/tip_calculator.dart';

void main() => runApp(_HotTipApp());

class _HotTipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _HomePage(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(144, 223, 170, 1),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hot Tip',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: TipCalculator(),
      ),
    );
  }
}
