import 'package:flutter/material.dart';

//Exemplo 1 - container
/*void main(){
  runApp(Container(color: Color(0xFF9A7676)));
}*/

//Exemplo 2 - saida de dados (Text)
/*void main(){
  runApp(Text("Ola Mundo!", textDirection: TextDirection.ltr, textAlign: TextAlign.center));
}*/

//Exemplo 3 - Widget sem estado
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return Container(color: Color(0xFF0000FF));
  }
}*/

//Exemplo 4 - Widgets para aparência unificada (MaterialDesign)
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(appBar: AppBar(title: Text("Ola")), body: Center(child: Text("Mundo")))
    );
  }
}*/

//Exemplo 5 - Widgets para aparência unificada (Cupertino)
/*import 'package:flutter/cupertino.dart';
void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return CupertinoApp(
        title: "Ola Mundo!",
        home: CupertinoPageScaffold(child: Center(child: Text("Mundo")))
    );
  }
}*/

//Exemplo 6 - Alertas (MaterialDesign)
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(appBar: AppBar(title: Text("Ola")), body: Center(child: AlertDialog(content: Text("Mundo"))))
    );
  }
}*/

//Exemplo 7 - Alertas (Cupertino)
/*import 'package:flutter/cupertino.dart';

void main(){

  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext context) {
    return
      CupertinoApp(
          home: CupertinoPageScaffold(
              child: Container(
                child: CupertinoAlertDialog(content: Text("Mensagem de alerta!")),
              )
          )
      );
  }
}*/


//Exemplo 8 - icones e disposição do código em Dart
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
      title: "Ola Mundo!",
      home: Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(
          child:
            AlertDialog(
              content:
              Icon(Icons.adb)
            )
        )
      )
    );
  }
}*/

//Exemplo 9 - entrada de dados (TextField - decoracao)
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
      title: "Ola Mundo!",
      home: Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body:
          Center(
            child:
              TextField(
                decoration:
                  InputDecoration(
                    icon:Icon(Icons.alarm),
                    hintText: "Diga seu nome:"
                  )
              )
          )
      )
    );
  }
}*/

//Exemplo 10 - entrada de dados (TextField - leitura)
/*void main(){
  runApp(MaterialApp(home: Scaffold(body: Center(
      child: TextField(onChanged: (texto) {
        print("Texto: $texto");
      },decoration: InputDecoration(icon:Icon(Icons.alarm), hintText: "Diga o nome:")))))
  );
}*/

//Exemplo 11 - botoes
void main(){
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
}




