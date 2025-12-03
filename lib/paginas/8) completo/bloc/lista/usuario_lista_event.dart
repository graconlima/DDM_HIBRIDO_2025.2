
import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario.dart';

abstract class UsuarioListaEvento {}

class CarregarUsuarios extends UsuarioListaEvento {}
class TentarNovamente extends UsuarioListaEvento {}

class CriarUsuario extends UsuarioListaEvento {
  final String nome;
  final String email;
  CriarUsuario({required this.nome, required this.email});
}

class AtualizarUsuarioEvento extends UsuarioListaEvento {
  final Usuario usuario;
  AtualizarUsuarioEvento(this.usuario);
}

class RemoverUsuarioEvento extends UsuarioListaEvento {
  final int id;
  RemoverUsuarioEvento(this.id);
}

