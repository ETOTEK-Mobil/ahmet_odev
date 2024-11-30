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
