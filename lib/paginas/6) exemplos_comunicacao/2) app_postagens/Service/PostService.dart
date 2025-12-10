import 'dart:convert';
import '../Model/Post.dart';
import 'package:http/http.dart' as http;
class PostService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';
  Future<List<Post>> obterPosts() async {
    final resposta = await http.get(Uri.parse('$baseUrl/posts'));
    if (resposta.statusCode == 200) {
      final lista = jsonDecode(resposta.body) as List;
      return lista.map((item) => Post.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao carregar posts');
    }
  }
  Future<Post> obterPostPorId(int id) async {
    final resposta = await http.get(Uri.parse('$baseUrl/posts/$id'));
    if (resposta.statusCode == 200) {
      final dados = jsonDecode(resposta.body);
      return Post.fromJson(dados);
    } else {
      throw Exception('Erro ao carregar post $id');
    }
  }
}
