import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Column-Row-Stack Kullanımı"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // Ekstra girdi olarak ekran boyutu almamak için 3 lü expanded yaptık en üstte 2 row var sonra sırayla column1 ve column2 var orantılı dağıtmak için de flex kullandık
              Expanded(
                flex: 50,
                child:Row(
                children: [
                  // Row1
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      alignment: Alignment.center, // Hem yatay hem dikey ortalar
                      child: Text('Row1'),
                    ),
                  ),
                  // Row2
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      alignment: Alignment.center, // Hem yatay hem dikey ortalar
                      child: Text('Row2'),
                    ),
                  ),
                ],
                ), 
              ),
              


              Expanded(
                flex: 25,
                child:Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text("Column5"),
                )
              ),

              Expanded(
                flex:25,
                child:Container(
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("Column2"),
                )
              ),
            ],
          ),
        ],
        
        // Positioned(
        //     left: screenWidth * 0.5,  // Yatay ortalama
        //     top: screenHeight * 0.5,  // Dikey ortalama
        //     child: Container(
        //       color: Colors.pink,
        //       width: 100,
        //       height: 100,
        //       child: const Center(
        //         child: Text("Stack"),
        //         ),
        //     ),
        // ),
      ),
    );
  }
}