import 'package:ddm_hibrido/paginas/5)%20exemplos_estado/3)%20BLoC/blocs.dart';
import 'package:ddm_hibrido/paginas/5)%20exemplos_estado/3)%20BLoC/evento.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AtualizadorTexto());
}
class AtualizadorTexto extends StatefulWidget{
  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();
}
class AtualizadorTextoEstado extends State{
  IMCEvento ie = new IMCEvento();
  AtualizadorTextoBloc atb = new AtualizadorTextoBloc();
  @override
  Widget build(BuildContext c) {
    return MaterialApp(home: Scaffold( body: Column(
        children: <Widget>[
          TextField(
              onChanged: (texto) {ie.altura = texto; },
              decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
          ),
          TextField(
              onChanged: (texto) {ie.peso = texto;},
              decoration: InputDecoration(icon:Icon(Icons.alternate_email), hintText: "Peso:")
          ),
          BlocBuilder(bloc: atb, builder: (context, snapshot) => Text("${atb.state}")),
          FloatingActionButton(onPressed: () {
            atb.add(ie);
          }, child: Icon(Icons.play_arrow_outlined))
        ]
    )));
  }
}
