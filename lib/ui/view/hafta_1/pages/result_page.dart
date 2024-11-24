import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget{
  @override
  final int counterValue;
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