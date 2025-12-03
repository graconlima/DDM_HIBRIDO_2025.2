import 'dart:convert';
import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario_detalhe.dart';
import 'package:http/http.dart' as http;

class UsuarioRepositorio {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  final Map<int, UsuarioDetalhe> _cacheDetalhes = {};
  List<Usuario>? _cacheLista;

  Future<List<Usuario>> listarUsuarios() async {
    if (_cacheLista != null) return _cacheLista!;

    final resp = await http.get(Uri.parse("$baseUrl/users"))
        .timeout(Duration(seconds: 5));

    if (resp.statusCode != 200) {
      throw Exception("Erro ${resp.statusCode}");
    }

    final lista = jsonDecode(resp.body) as List;
    final usuarios = lista.map((e) => Usuario.fromJson(e)).toList();
    _cacheLista = usuarios;
    return usuarios;
  }

  Future<UsuarioDetalhe> obterDetalhe(int id) async {
    if (_cacheDetalhes.containsKey(id)) {
      return _cacheDetalhes[id]!;
    }

    final resp = await http.get(Uri.parse("$baseUrl/users/$id"))
        .timeout(Duration(seconds: 5));

    if (resp.statusCode != 200) {
      throw Exception("Erro ${resp.statusCode}");
    }

    final json = jsonDecode(resp.body);
    final detalhe = UsuarioDetalhe.fromJson(json);
    _cacheDetalhes[id] = detalhe;
    return detalhe;
  }

  Future<Usuario> criarUsuario({required String nome, required String email}) async {
    final resp = await http.post(
      Uri.parse("$baseUrl/users"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': nome, 'email': email}),
    ).timeout(Duration(seconds: 5));

    if (resp.statusCode < 200 || resp.statusCode >= 300) {
      throw Exception("Erro ${resp.statusCode} ao criar usuário");
    }

    final json = jsonDecode(resp.body);
    final criado = Usuario.fromJson(json);
    _cacheLista = ([criado] + (_cacheLista ?? [])).toList();
    return criado;
  }

  Future<Usuario> atualizarUsuario(Usuario usuario) async {
    final resp = await http.put(
      Uri.parse("$baseUrl/users/${usuario.id}"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': usuario.nome, 'email': usuario.email}),
    ).timeout(Duration(seconds: 5));

    if (resp.statusCode < 200 || resp.statusCode >= 300) {
      throw Exception("Erro ${resp.statusCode} ao atualizar usuário");
    }

    final json = jsonDecode(resp.body);
    final atualizado = Usuario.fromJson(json);

    if (_cacheLista != null) {
      _cacheLista = _cacheLista!
          .map((u) => u.id == atualizado.id ? atualizado : u)
          .toList();
    }

    if (_cacheDetalhes.containsKey(atualizado.id)) {
      final old = _cacheDetalhes[atualizado.id]!;
      _cacheDetalhes[atualizado.id] = UsuarioDetalhe(
        id: old.id,
        nome: atualizado.nome,
        telefone: old.telefone,
        website: old.website,
      );
    }

    return atualizado;
  }

  Future<void> removerUsuario(int id) async {
    final resp = await http.delete(
      Uri.parse("$baseUrl/users/$id"),
    ).timeout(Duration(seconds: 5));

    if (resp.statusCode < 200 || resp.statusCode >= 300) {
      throw Exception("Erro ${resp.statusCode} ao remover usuário");
    }

    if (_cacheLista != null) {
      _cacheLista = _cacheLista!.where((u) => u.id != id).toList();
    }
    _cacheDetalhes.remove(id);
  }
}
