import 'package:flutter/material.dart';

import 'pages/column_raw_stack_page.dart';
import 'pages/stage_management_page.dart';

void main() {
  runApp(const Hafta1View());
}

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//!Burası ne işe yarıyor bulamadım, yardıma açığım.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//! AppSize Boyutlarımız.
class AppSize {
  static const double sm = 8.0; // Small spacing
  static const double md = 16.0; // Medium spacing
  static const double lg = 32.0; // Large spacing
}

//! Ana Sayfa
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Text("1.Hafta"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //? Button 1
            ElevatedButton(
              child: const Text("Row-Column-Stack Kullanımı"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ColumnRowStackPage()));
              },
            ),
            //? İki buton arasına koyduğumuz boşluk
            const SizedBox(height: AppSize.md),
            //? Button 2
            ElevatedButton(
              child: const Text("State Management"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const StageManagementPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
