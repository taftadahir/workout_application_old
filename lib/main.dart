import 'package:flutter/material.dart';

// App Entry point
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Workout App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(),
      );
}
