import 'package:flutter/material.dart';

//Exemplo 1: as classes StatefulWidget e State
/*void main() => runApp(MinhaAplicacao());

class MinhaAplicacao extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MinhaHomePage());
  }
}

//StatefulWidget
class MinhaHomePage extends StatefulWidget{
  MinhaHomePageEstado createState() => MinhaHomePageEstado();
}

class MinhaHomePageEstado extends State<MinhaHomePage>{
  int contador = 0;
  void incrementoContador(){
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Text("$contador")),
      floatingActionButton: FloatingActionButton(onPressed: incrementoContador),
    );
  }
}*/

//Exemplo 2.1: IMC (sem estado)
/*void main(){
  runApp(IMC());
}

class IMC extends StatelessWidget{
  double a = 1.70, p = 70.0, imc = 0.0;
  String textoIMC = "";

  atualizarTexto(){
    textoIMC = "O IMC e $imc";
  }

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
          Text("$textoIMC"),
          FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
        ]
    )));
  }

  void calcular(){
    imc = p/(a*a);
    print("IMC: $imc");
    atualizarTexto();
  }
}*/

//Exemplo 2.2: IMC (com estado)
/*void main(){
  runApp(AtualizadorTexto());
}

class AtualizadorTexto extends StatefulWidget{
  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();
}

class AtualizadorTextoEstado extends State{
  double a = 1.70, p = 70.0, imc = 0;
  String textoIMC = "";

  atualizarTexto(){
    setState(() {
      textoIMC = "O IMC e $imc";
    });
  }

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
          Text("$textoIMC"),
          FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
        ]
    )));
  }

  void calcular(){
    imc = p/(a*a);
    print("IMC: $imc");
    atualizarTexto();
  }
}*/

//Exemplo 3 (extra): IMC com classificação
/*void main(){
  runApp(AtualizadorTexto());
}

class AtualizadorTexto extends StatefulWidget{
  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();
}

class AtualizadorTextoEstado extends State{
  double a = 1.70, p = 70.0, imc = 0;
  String textoIMC = "", classificacao = "";
  atualizarTexto(){
    setState(() {
      if(imc < 18.5){
        classificacao = "Magreza";
      }else if(imc >= 18.5 && imc <= 24.9){
        classificacao = "Normal";
      }else if(imc >= 25.0 && imc <= 29.9){
        classificacao = "Sobrepeso";
      }else if(imc >= 30.0 && imc <= 39.9){
        classificacao = "Obesidade";
      }else if(imc > 40.0){
        classificacao = "Obesidade Grave";
      }

      textoIMC = "O IMC calculado e $imc, e a classificacao e $classificacao";
    });
  }

  Widget build(BuildContext bc){
    return MaterialApp(home: Scaffold(body: Column(
      children: <Widget>[
        TextField(
          onChanged: (texto){a = double.parse(texto); calculoIMC();},
          decoration: InputDecoration(icon: Icon(Icons.accessibility), hintText: "Altura"),
        ),
        TextField(
          onChanged: (texto){p = double.parse(texto); calculoIMC();},
          decoration: InputDecoration(icon: Icon(Icons.alternate_email_sharp), hintText: "Peso"),
        ),
        Text("$textoIMC")
      ],
    )));
  }

  void calculoIMC(){
    imc = p/(a*a);
    atualizarTexto();
  }
}*/

//Exemplo 4: Estado efemero da aplicação com Controle Deslizante
/*void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exemplo Controle Deslizante",
        home: Scaffold(
            appBar: AppBar(title: Text("Controle Deslizante")),
            body: Center(child: ControleDeslizante())));
  }
}

class ControleDeslizante extends StatefulWidget {
  _ControleDeslizante createState() => _ControleDeslizante();
}

class _ControleDeslizante extends State {
  int valor = 7;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Slider(
            value: valor.toDouble(),
            min: 0,
            max: 10,
            activeColor: Colors.amber,
            inactiveColor: Colors.black45,
            label: "${valor.round()}",
            onChanged: (double v) {
              setState(() {
                valor = v.round();
              });
            },
            semanticFormatterCallback: (double v) {
              return "${v.round()}";
            }
          ),
          Text("$valor", style: TextStyle(fontSize: 30))
        ]
      )
    );
  }
}*/

//Exemplo 5 - Estado global da aplicação com Controle Deslizante
/*import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
          create: (c){return ModeloControleDeslizante();},
          child: MinhaApp()
      )
  );
}

class MinhaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exemplo Controle Deslizante com Provider",
        home: Scaffold(
            appBar: AppBar(title: Text("Controle Deslizante com Provider")),
            body: MaterialApp(home: Center(child: TelaInicial()))));
  }
}

class TelaInicial extends StatelessWidget {

  Widget build(BuildContext context) {
    return Consumer<ModeloControleDeslizante>(
        builder: (c, m, ch){return Column(
            children: [
              Text("Valor atual: ${Provider.of<ModeloControleDeslizante>(context).valor}"),
              FloatingActionButton(
                  onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ControleDeslizante()
                      )
                  );
                  }
              )
            ]
        );}
    );
  }
}

class ModeloControleDeslizante extends ChangeNotifier{
  int valor = 0;

  void atualizar(int valor){
    this.valor = valor;
    print("Valor: ${this.valor}");
    notifyListeners();
  }
}

class ControleDeslizante extends StatefulWidget {
  _ControleDeslizante createState() => _ControleDeslizante();
}

class _ControleDeslizante extends State {
  int valor = 7;
  ModeloControleDeslizante ms = ModeloControleDeslizante();

  Widget build(BuildContext context) {

    valor = Provider.of<ModeloControleDeslizante>(context).valor;

    return Center(
        child: Column(
            children: <Widget>[
              Slider(
                  value: valor.toDouble(),
                  min: 0,
                  max: 10,
                  activeColor: Colors.amber,
                  inactiveColor: Colors.black45,
                  label: "${valor.round()}",
                  onChanged: (double v) {
                    setState(() {
                      valor = v.round();
                      Provider.of<ModeloControleDeslizante>(context, listen: false).atualizar(valor);
                    });
                  },
                  semanticFormatterCallback: (double v) {
                    return "${v.round()}";
                  }
              ),
              Text("Valor: ${valor}", style: TextStyle(fontSize: 30)),
              FloatingActionButton(onPressed: (){Navigator.pop(context);}),

            ]
        )
    );
  }
}*/
