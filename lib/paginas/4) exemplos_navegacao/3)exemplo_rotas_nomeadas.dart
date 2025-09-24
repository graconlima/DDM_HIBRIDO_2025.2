import 'package:flutter/material.dart';
//Exemplo 1 - rotas nomeadas
/*void main(){
  runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (c){return TelaInicial();},
        "/primeira_tela": (c){return PrimeiraTela();},
        "/segunda_tela": (c){return SegundaTela();}
      })
  );
}

class TelaInicial extends StatelessWidget{
  String nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tela Inicial")),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          FloatingActionButton(heroTag: "bt1", onPressed: (){Navigator.pushNamed(context, "/primeira_tela");}, child: Text("Tela 1")),
          FloatingActionButton(heroTag: "bt2", onPressed: (){Navigator.pushNamed(context, "/segunda_tela");}, child: Text("Tela 2"))
        ]))
    );
  }
}

class PrimeiraTela extends StatelessWidget{
  String parametro = "";

  @override
  Widget build(BuildContext bc) {
    return Scaffold(body: Center(child: Row(children: [Text("Tela 1"), FloatingActionButton(child: Text("Voltar 1"), onPressed: (){Navigator.pop(bc);})],)));
  }
}

class SegundaTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FloatingActionButton(child: Text("Voltar 2"), onPressed: (){Navigator.pop(context);})));
  }
}*/


//Exemplo 2 - rotas nomeadas com passagem de parametros
void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (c){return TelaInicial();},
      "/primeira_tela": (c){return PrimeiraTela();},
      "/segunda_tela": (c){return SegundaTela();}
    })
  );
}

class TelaInicial extends StatelessWidget{
  String nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tela Inicial")),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          TextField(onChanged: (texto){nome = texto;},decoration: InputDecoration(icon: Icon(Icons.accessibility), hintText: "NOME:")),
          FloatingActionButton(heroTag: "bt1", onPressed: (){Navigator.pushNamed(context, "/primeira_tela", arguments: Usuario(nome));}, child: Text("Tela 1")),
          FloatingActionButton(heroTag: "bt2", onPressed: (){Navigator.pushNamed(context, "/segunda_tela");}, child: Text("Tela 2"))
        ])
    );
  }
}

class Usuario{
  String nome;
  Usuario(this.nome);
}

class PrimeiraTela extends StatelessWidget{
  String parametro = "";

  @override
  Widget build(BuildContext bc) {
    final args = ModalRoute.of(bc)!.settings.arguments as Usuario;
    return Scaffold(body: Center(child: Row(children: [Text("${args.nome}"), FloatingActionButton(child: Text("Voltar 1"), onPressed: (){Navigator.pop(bc);})],)));
  }
}

class SegundaTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FloatingActionButton(child: Text("Voltar 2"), onPressed: (){Navigator.pop(context);})));
  }
}
