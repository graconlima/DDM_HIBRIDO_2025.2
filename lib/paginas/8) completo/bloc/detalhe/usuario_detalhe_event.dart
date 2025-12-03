import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario_detalhe.dart';

abstract class UsuarioDetalheEvento {}

class CarregarDetalhe extends UsuarioDetalheEvento {
  final int id;
  CarregarDetalhe(this.id);
}

class RetentarCarregamento extends UsuarioDetalheEvento {
  final int id;
  RetentarCarregamento(this.id);
}
// bloc/detalhe/usuario_detalhe_state.dart
class UsuarioDetalheEstado {
  final bool carregando;
  final UsuarioDetalhe? dado;
  final String? erro;

  UsuarioDetalheEstado({
    required this.carregando,
    required this.dado,
    required this.erro,
  });

  factory UsuarioDetalheEstado.inicial() =>
      UsuarioDetalheEstado(carregando: false, dado: null, erro: null);

  UsuarioDetalheEstado copiar({
    bool? carregando,
    UsuarioDetalhe? dado,
    String? erro,
  }) {
    return UsuarioDetalheEstado(
      carregando: carregando ?? this.carregando,
      dado: dado ?? this.dado,
      erro: erro,
    );
  }
}
