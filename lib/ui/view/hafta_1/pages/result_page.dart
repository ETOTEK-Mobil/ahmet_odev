import 'package:flutter/material.dart';


class result_page extends StatelessWidget{

  final int counterValue;
  const result_page({Key? key, required this.counterValue}) : super(key: key);
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Column-Row-Stack Kullanımı"),
      ),
      body:Center(
        child: Text("$counterValue"),
      )
    );
  }
}