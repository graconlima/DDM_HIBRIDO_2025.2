import 'package:flutter/material.dart';
//Exemplo: transicao do Material Design
/*void main(){
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
}*/

//Exemplo 2: animacao de transicao
/*import 'package:page_transition/page_transition.dart';
void main(){
  runApp(MaterialApp(home: TelaInicial()));
}
class TelaInicial extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Row(children: <Widget>[
          FloatingActionButton(
              heroTag: "bt1",
              onPressed: (){Navigator.of(bc).push(
                PageTransition(
                    child: PrimeiraTela(),
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 600),
                    reverseDuration: Duration(milliseconds: 300)
                )
              );}, child: Text("Tela 1")),
          FloatingActionButton(
              heroTag: "bt2",
              onPressed: (){Navigator.of(bc).push(
                  MaterialPageRoute(
                      builder: (bc) => SegundaTela())
              );}, child: Text("Tela 2"))
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
}*/