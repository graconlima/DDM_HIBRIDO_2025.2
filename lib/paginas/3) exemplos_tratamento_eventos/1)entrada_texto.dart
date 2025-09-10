import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//Exemplo 1: lendo entrada de usuario e calculando IMC
/*void main(){
  double a = 1.70, p = 70.0;
  runApp(MaterialApp(home: Scaffold(body: Column(
      children: <Widget>[
        TextField(
            onChanged: (texto) {a = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
            decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
        ),
        TextField(
            onChanged: (texto) {p = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
            decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
        )
      ]
  )))
  );
}*/

//Exemplo 1: criando regras
/*void main(){
  double a = 1.70, p = 70.0;
  runApp(MaterialApp(home: Scaffold(body: Column(
      children: <Widget>[
        TextField(
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9.]+"))],
          keyboardType: TextInputType.number,
          onChanged: (texto) {a = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
          decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
        ),
        TextField(
            onChanged: (texto) {p = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
            decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
        )
      ]
  )))
  );
}*/
