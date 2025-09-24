import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: TelaInicial()));
}
class TelaInicial extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Row(children: <Widget>[
          FloatingActionButton(heroTag: "bt1", onPressed: (){Navigator.of(bc).push(MaterialPageRoute(builder: (bc) => PrimeiraTela()));}, child: Text("Tela 1")),
          FloatingActionButton(heroTag: "bt2", onPressed: (){Navigator.of(bc).push(MaterialPageRoute(builder: (bc) => SegundaTela()));}, child: Text("Tela 2"))
        ])
    );
  }
}
class PrimeiraTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FloatingActionButton(child: Text("Voltar"), onPressed: (){Navigator.pop(context);})));
  }
}
class SegundaTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FloatingActionButton(child: Text("Voltar"), onPressed: (){Navigator.pop(context);})));
  }
}