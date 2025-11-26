import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home: TelaInicial()));
}

class TelaInicial extends StatelessWidget{
  String nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tela Inicial")),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          TextField(onChanged: (texto){nome = texto;},decoration: InputDecoration(icon: Icon(Icons.accessibility), hintText: "NOME:")),
          FloatingActionButton(heroTag: "bt1", onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (bc) => PrimeiraTela(nome)));}, child: Text("Tela 1")),
          FloatingActionButton(heroTag: "bt2", onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (bc) => SegundaTela()));}, child: Text("Tela 2"))
        ])
    );
  }
}

class PrimeiraTela extends StatelessWidget{
  String parametro = "";

  PrimeiraTela(String parametro){
    this.parametro = parametro;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Row(children: [Text("$parametro"), FloatingActionButton(child: Text("Voltar 1"), onPressed: (){Navigator.pop(context);})],)));
  }
}

class SegundaTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FloatingActionButton(child: Text("Voltar 2"), onPressed: (){Navigator.pop(context);})));
  }
}
