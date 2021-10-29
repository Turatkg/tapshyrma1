import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const CounterApplicatiion());

class CounterApplicatiion extends StatelessWidget {
  const CounterApplicatiion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Тапшырма 01",
      home: CounterScreen(),
    );
  }
}
