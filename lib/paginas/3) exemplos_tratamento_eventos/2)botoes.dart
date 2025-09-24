import 'package:ddm_hibrido/dados_compartilhados/modelos/calculadora.dart';
import 'package:flutter/material.dart';
//Exemplo 1 - botoes
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
      title: "Ola Mundo!",
      home:
        Scaffold(
          appBar: AppBar(title: Text("Ola")),
          body:
            Center(
              child:
                IconButton(
                  icon: Icon(Icons.add_a_photo),
                  onPressed: (){print("Pressionado!");}
                )
            )
        )
    );
  }
}*/

//Exemplo 2: IMC 2.0: calculando com botao
/*void main(){
  runApp(IMC());
}

class IMC extends StatelessWidget{
  double a = 1.70, p = 70.0;

  Widget build(BuildContext bc) {
    return MaterialApp(home: Scaffold(body: Column(
    children: <Widget>[
      TextField(
        onChanged: (texto) {a = double.parse(texto);},
        decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
      ),
      TextField(
        onChanged: (texto) {p = double.parse(texto);},
        decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
      ),
      FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
    ]
    )));
  }

  void calcular(){
    double imc = p/(a*a);print("IMC: $imc");
  }
}*/

//Exemplo 3: IMC 2.0: calculando com botao (com modelo)
/*void main(){
  runApp(IMC());
}

class IMC extends StatelessWidget{
  double a = 1.70, p = 70.0;

  Widget build(BuildContext bc) {
    return MaterialApp(home: Scaffold(body: Column(
    children: <Widget>[
      TextField(
        onChanged: (texto) {a = double.parse(texto);},
        decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
      ),
      TextField(
        onChanged: (texto) {p = double.parse(texto);},
        decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
      ),
      FloatingActionButton(child: Text("IMC"), onPressed: (){print("${Calculadora.imc(a, p)}");})
    ]
    )));
  }
}*/