import 'package:flutter/material.dart';

class HomeWorkTwo extends StatelessWidget {
  final int value;
  // ignore: use_key_in_widget_constructors
  const HomeWorkTwo({@required this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade400,
        title: const Text('Тапшырма 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 80.0,
                  right: 80.0,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Number: $value',
                  style: const TextStyle(
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
