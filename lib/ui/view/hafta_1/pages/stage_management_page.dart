import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/view/pages/result_page.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

//! AppSize Boyutlarımız.
class AppSize {
  static const double sm = 8.0;  // Small spacing
  static const double md = 16.0; // Medium spacing
  static const double lg = 32.0; // Large spacing
}

class _Sayfa2State extends State<Sayfa2> {
  @override

  int counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("State Managemenet"),
          )
        ),
        body:Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 300.0),
              child: Text("$counter"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              ElevatedButton(
              child: Text("Arttır"),
              onPressed: (){
              setState(() {
                counter++;
              });
              },
              ),

              const SizedBox(height: AppSize.lg),
              const SizedBox(width: AppSize.md),
              ElevatedButton(
              child: Text("azalt"),
              onPressed: (){
              setState(() {
                if(counter>0){ //Asla 0 dan aşağı inemez artık
                counter--;
                }
              });
              },
              )
              ],
            ),

            ElevatedButton( 
              child: Text("Sonucu Gör"),
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Sayfa3(counterValue: counter),
              ),);
                
              },
              
              
              )            
          ],


        )
        ,
      );
  }
}
