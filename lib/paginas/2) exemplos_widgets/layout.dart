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

//Exemplo 2: Layout para aplicativo Material
void main(){
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
}