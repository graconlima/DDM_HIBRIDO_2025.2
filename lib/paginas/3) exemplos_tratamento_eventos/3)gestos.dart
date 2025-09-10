
import 'package:flutter/material.dart';
//Exemplo 1: clique simples
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(onTap: (){print("Clicado");})
  ));
}*/

//Exemplo 2: clique simples (com filho)
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("Ola")),
            body: Center(child: GestureDetector(onTap: (){print("Clicado!");}, child: Text("Ola Mundo")))
        )
    );
  }
}*/

//Exemplo 3: clique duplo
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(onDoubleTap: (){print("Clique duplo");})
  ));
}*/

//Exemplo 4: arrastar e soltar
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(
        onHorizontalDragStart: (DragStartDetails d){
          print("Inicio arrasto horizontal");
          print(d);
        },
        onVerticalDragEnd: (DragEndDetails d){
          print("Fim arrasto vertical");
          print(d);
        },
      )
  ));
}*/

//Exemplo 5 - Clique simples com Alerta
/*void main(){
  runApp(MaterialApp(home: MinhaApp()));
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(child: GestureDetector(onTap: (){exibirInformacao(bc, "clicado!");}, child: Text("Ola Mundo")))
    );
  }

  void exibirInformacao(BuildContext bc, String informacao){
    var alerta = AlertDialog(title: Text("Informacao"), content: Text(informacao));
    showDialog(context: bc, builder: (bc){return alerta;});
  }
}*/

//Exemplo 6: deslizar com dois alertas, clique secundário e terciário, e detalhes
/*void main(){
  runApp(MaterialApp(home: MinhaApp()));
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(child: GestureDetector(
          onSecondaryTap: () {
           print("clique segundo bt!");
          },
          onTertiaryTapDown: (TapDownDetails tdd) {
            print("clique bt central");
          },
          onHorizontalDragStart: (DragStartDetails dsd){
            var s = "${dsd.globalPosition}, "
                "${dsd.kind}, "
                "${dsd.localPosition}, "
                "${dsd.sourceTimeStamp}, "
                "${dsd.hashCode}, "
                "${dsd.runtimeType}";
            exibirInformacao(bc, "Posicao de inicio de arrasto horizontal: "+s);
          },
          onHorizontalDragEnd: (DragEndDetails ded){
            var s = "${ded.primaryVelocity}, "
                "${ded.velocity}, "
                "${ded.runtimeType}, "
                "${ded.hashCode}";
            exibirInformacao(bc, "Posicao de fim de arrasto horizontal: "+s);
          },
          onVerticalDragStart: (DragStartDetails dsd){
            var s = "${dsd.globalPosition}, "
                "${dsd.kind}, "
                "${dsd.localPosition}, "
                "${dsd.sourceTimeStamp}, "
                "${dsd.hashCode}, "
                "${dsd.runtimeType}";
            exibirInformacao(bc, "Posicao de inicio de arrasto vertical: "+s);
          },
          onVerticalDragEnd: (DragEndDetails ded){
            var s = "${ded.primaryVelocity}, "
                "${ded.velocity}, "
                "${ded.runtimeType}, "
                "${ded.hashCode}";
            exibirInformacao(bc, "Posicao de fim de arrasto vertical: $s");
          },
          child: Text("Ola Mundo")))
    );
  }

  void exibirInformacao(BuildContext bc, String informacao){
    var alerta = AlertDialog(title: Text("Informacao"), content: Text(informacao));
    showDialog(context: bc, builder: (bc){return alerta;});
  }
}*/

//Exemplo 7: zoom
/*void main(){
  runApp(MaterialApp(home: MinhaApp()));
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(child: GestureDetector(
          onScaleUpdate: (details) {
            print('Zoom: ${details.scale}');
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.black12,
            child: Center(
              child: Text('Use dois dedos para aplicar zoom'),
            ),
          ),
        )
      )
    );
  }

  void exibirInformacao(BuildContext bc, String informacao){
    var alerta = AlertDialog(title: Text("Informacao"), content: Text(informacao));
    showDialog(context: bc, builder: (bc){return alerta;});
  }
<<<<<<< HEAD
}*/
=======
}*/
>>>>>>> eb4e08d70b8fa651d281b6b82e6f5b207e72a430
