import 'package:http/http.dart' as http;

//Exemplo 1 (didatico)
//vs 0.12.0
/*void main() async {
  print(await http.read('http://jsonplaceholder.typicode.com/'));
}*/

//vs 0.13.0
/*void main() async {
  print(await http.read(Uri(host: "jsonplaceholder.typicode.com")));
}*/

//Exemplo 2
/*void main() async {
  var c = new http.Client();
  try{
    final resposta = await http.get(Uri.https("jsonplaceholder.typicode.com", "albums/1"));

    //exibindo o status de um GET (REST)
    print(resposta.statusCode);

    //exibindo o corpo de um GET (REST)
    print(resposta.body);
  }finally{c.close();}
}*/

//Exemplo 3 - decodificação JSON
/*import 'dart:convert';
void main() async {
  var c = new http.Client();
  try{
    final resposta = await http.get(Uri.https("jsonplaceholder.typicode.com", "albums/1"));

    //decodificando o JSON de um GET (REST)
    print(jsonDecode(resposta.body));
  }finally{c.close();}
}*/

//Exemplo 4 - convertendo a Resposta HTTP em Objeto Dart
/*import 'dart:convert';
void main() async {
  var resposta = await http.get(Uri.https("jsonplaceholder.typicode.com", "albums/1"));
  var meuAlbum = MeuAlbum.converterJson(jsonDecode(resposta.body));
  print("Id:");
  print(meuAlbum.id);
  print("Id do Usuario:");
  print(meuAlbum.idUsuario);
  print("Titulo: ");
  print(meuAlbum.titulo);
}
class MeuAlbum{
  int id;
  int idUsuario;
  String titulo;
  MeuAlbum({required this.id, required this.idUsuario, required this.titulo});
  factory MeuAlbum.converterJson(Map<String, dynamic> dadosJSON){
    return MeuAlbum(id: dadosJSON['id'], idUsuario: dadosJSON['userId'], titulo: dadosJSON['title']);
  }
}*/