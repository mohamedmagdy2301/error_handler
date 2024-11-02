import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';

void main() {
  FlutterError.onError = ErrorHandler.handleFlutterError;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Error Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
