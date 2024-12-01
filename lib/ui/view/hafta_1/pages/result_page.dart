import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int counterValue;
  const ResultPage({super.key, required this.counterValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Column-Row-Stack Kullanımı"),
        ),
        body: Center(
          child: Text("$counterValue"),
        ));
  }
}
