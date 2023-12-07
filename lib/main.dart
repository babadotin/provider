import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/first_page.dart';
import 'package:provider_test/second_page.dart';

import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstPage(),
          '/second': (context) => const SecondPage(),
        },
      ),
    );
  }
}
