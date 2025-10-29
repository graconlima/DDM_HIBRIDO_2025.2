import 'package:flutter/material.dart';

//Exemplo 1: Layout para aplicativo não Material
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Center(child: Text("Ola Mundo", textDirection: TextDirection.ltr));
  }
}*/

//Exemplo 2: Container (parametros)
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Caixa decorada',
        style: TextStyle(color: Colors.white),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}*/

//Exemplo 3: Layout para aplicativo Material
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body: Center(child: Text("Ola Mundo"))
        )
    );
  }
}*/

//Exemplo 4: Row
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("OlaApp")),
            body:
            // Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //     ])

            // Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //       Icon(Icons.star, color: Colors.amber),
            //     ])
        )
    );
  }
}*/