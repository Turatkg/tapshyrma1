import 'package:flutter/material.dart';

import 'ekinchi_barak.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purpleAccent.shade400),
      home: Scaffold(
        // backgroundColor: Colors.yellow.shade200,
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Тапшырма 01'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeWorkTwo(value: count),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 80.0,
                    right: 80.0,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'Number: $count',
                    style: const TextStyle(
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.black,
                    ),
                    onPressed: _decrementCount,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 26.0,
                        right: 26.0,
                      ),
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 45.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.black,
                    ),
                    onPressed: _incrementCount,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 26.0,
                        right: 26.0,
                      ),
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 45.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
