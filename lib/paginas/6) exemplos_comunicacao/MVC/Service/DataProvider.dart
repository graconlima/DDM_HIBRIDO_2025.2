import 'dart:convert';
import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Model/Album.dart';
import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Service/AbstractDataProvider.dart';
import 'package:http/http.dart' as http;

//encapsula o acesso a várias fontes diferentes
class AlbumDataProvider extends AbstractDataProvider {

  var URL = "jsonplaceholder.typicode.com";
  var endpoint = "albums/";

  Future<Album> get(int album) async {
    var resposta = await http.get(
        Uri.https(URL, endpoint+album.toString()));
    Album a = Album.converterJson(jsonDecode(resposta.body));

    return a;
  }
}