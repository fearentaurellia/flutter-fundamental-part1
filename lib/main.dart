import 'package:flutter/material.dart';
import 'basic_widgets/inputAndSelection_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const Center(
          child: MyTextFieldWidget(),
        ),
      ),
    );
  }
}