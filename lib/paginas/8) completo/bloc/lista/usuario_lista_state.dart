
import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario.dart';

class UsuarioListaEstado {
  final bool carregando;
  final List<Usuario> dados;
  final String? erro;

  UsuarioListaEstado({
    required this.carregando,
    required this.dados,
    required this.erro,
  });

  factory UsuarioListaEstado.inicial() =>
      UsuarioListaEstado(carregando: false, dados: [], erro: null);

  UsuarioListaEstado copiar({
    bool? carregando,
    List<Usuario>? dados,
    String? erro,
  }) {
    return UsuarioListaEstado(
      carregando: carregando ?? this.carregando,
      dados: dados ?? this.dados,
      erro: erro,
    );
  }
}
