import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Counter>(
              builder: (BuildContext context, counter, Widget? child) {
                return Text(
                  '${counter.count}',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.decrement();
              },
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
