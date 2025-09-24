import 'package:flutter/material.dart';

//Exemplo 1: sem estado
/*
void main() {
  runApp(MaterialApp(home: Historia()));
}

class Historia extends StatelessWidget {
  var descricoes = [
    [
      "Você se encontra passando na frente de um vilarejo. Você decide...",
      "entrar",
      "seguir"
    ],
    ["No vilarejo ha casa e mercado...", "casa", "mercado"],

    //casa
    ["Na casa ha escada e quarto...", "escada", "quarto"],
    ["Ao subir a escada ve sotao e janela...", "sotao", "janela"],
    [
      "Ao entrar no quarto ha guarda-roupa e criado-mudo...",
      "guarda-roupa",
      "criado-mudo"
    ],

    //mercado
    ["No mercado ha dispensa e banheiro...", "dispensa", "banheiro"],
    ["Na dispensa ha cofre e porta...", "cofre", "porta"],

    [
      "Segue pelo caminho, a direita floresta, esquerda montanha",
      "floresta",
      "montanha"
    ],

    ["FIM...", "FIM", "FIM"],
  ];

  var decisoes = [
    [1, 7],
    [2, 5],
    [3, 4],
    [8, 8],
    [8, 8],
    [6, 8],
    [8, 8],
    [8, 8]
  ];

  var i_desc = 0, i_dec = 0;

  @override
  Widget build(BuildContext bc) {
    return Scaffold(
        appBar: AppBar(title: Text("Introdução")),
        body: Center(
            heightFactor: 100,
            child: Column(children: [
              Text(descricoes[i_desc][0]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        child: Text(descricoes[i_desc][1]),
                        onPressed: () {
                          i_desc = decisoes[i_desc][0];
                          print(descricoes[i_desc][0]);
                        }),
                    FloatingActionButton(
                        child: Text(descricoes[i_desc][2]),
                        onPressed: () {
                          i_desc = decisoes[i_desc][1];
                          print(descricoes[i_desc][0]);
                        }),
                  ])
            ])));
  }
}*/

//Exemplo 2: com estado
void main() {
  runApp(MaterialApp(home: CriaEstado()));
}

class CriaEstado extends StatefulWidget {
  Estado createState() => Estado();
}

class Estado extends State {
  var descricoes = [
    [
      "Você se encontra passando na frente de um vilarejo. Você decide...",
      "entrar",
      "seguir"
    ],
    ["No vilarejo ha casa e mercado...", "casa", "mercado"],

    //casa
    ["Na casa ha escada e quarto...", "escada", "quarto"],
    ["Ao subir a escada ve sotao e janela...", "sotao", "janela"],
    [
      "Ao entrar no quarto ha guarda-roupa e criado-mudo...",
      "guarda-roupa",
      "criado-mudo"
    ],

    //mercado
    ["No mercado ha dispensa e banheiro...", "dispensa", "banheiro"],
    ["Na dispensa ha cofre e porta...", "cofre", "porta"],

    [
      "Segue pelo caminho, a direita floresta, esquerda montanha",
      "floresta",
      "montanha"
    ],

    ["FIM...", "FIM", "FIM"],
  ];

  var decisoes = [
    [1, 7],
    [2, 5],
    [3, 4],
    [8, 8],
    [8, 8],
    [6, 8],
    [8, 8],
    [8, 8]
  ];

  var i_desc = 0, i_dec = 0;

  @override
  Widget build(BuildContext bc) {
    return Scaffold(
        appBar: AppBar(title: Text("Introdução")),
        body: Center(
            heightFactor: 100,
            child: Column(children: [
              Text(descricoes[i_desc][0]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        child: Text(descricoes[i_desc][1]),
                        onPressed: () {
                          setState(() {
                            i_desc = decisoes[i_desc][0];
                          });
                          print(descricoes[i_desc][0]);
                        }),
                    FloatingActionButton(
                        child: Text(descricoes[i_desc][2]),
                        onPressed: () {
                          setState(() {
                            i_desc = decisoes[i_desc][1];
                          });
                          print(descricoes[i_desc][0]);
                        }),
                  ])
            ])));
  }
}
