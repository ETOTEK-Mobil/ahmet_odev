import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_1/pages/result_page.dart';

class StageManagementPage extends StatefulWidget {
  const StageManagementPage({super.key});

  @override
  State<StageManagementPage> createState() => _StageManagementPageState();
}

class _StageManagementPageState extends State<StageManagementPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("State Managemenet"),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$counter"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Arttır"),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              const SizedBox(height: AppSize.lg),
              const SizedBox(width: AppSize.md),
              ElevatedButton(
                child: const Text("azalt"),
                onPressed: () {
                  setState(() {
                    if (counter > 0) {
                      //Asla 0 dan aşağı inemez artık
                      counter--;
                    }
                  });
                },
              )
            ],
          ),
          ElevatedButton(
            child: const Text("Sonucu Gör"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(counterValue: counter),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
