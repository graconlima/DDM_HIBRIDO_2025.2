import 'package:bloc/bloc.dart';
import '../../bloc/lista/usuario_lista_event.dart';
import '../../bloc/lista/usuario_lista_state.dart';
import '../../models/usuario.dart';
import '../../repository/usuario_repository.dart';

class UsuarioListaBloc extends Bloc<UsuarioListaEvento, UsuarioListaEstado> {
  final UsuarioRepositorio repo;

  UsuarioListaBloc(this.repo) : super(UsuarioListaEstado.inicial()) {
    on<CarregarUsuarios>(_carregar);
    on<TentarNovamente>(_carregar);
    on<CriarUsuario>(_criar);
    on<AtualizarUsuarioEvento>(_atualizar);
    on<RemoverUsuarioEvento>(_remover);
  }

  Future<void> _carregar(UsuarioListaEvento event, Emitter<UsuarioListaEstado> emit) async {
    emit(state.copiar(carregando: true, erro: null));

    try {
      final lista = await repo.listarUsuarios();
      emit(state.copiar(carregando: false, dados: lista));
    } catch (e) {
      emit(state.copiar(carregando: false, erro: "Erro ao carregar: $e"));
    }
  }

  Future<void> _criar(CriarUsuario event, Emitter<UsuarioListaEstado> emit) async {
    final tempId = DateTime.now().millisecondsSinceEpoch * -1;
    final tempUsuario = Usuario(id: tempId, nome: event.nome, email: event.email);

    emit(state.copiar(dados: [tempUsuario, ...state.dados]));

    try {
      final criado = await repo.criarUsuario(nome: event.nome, email: event.email);
      emit(state.copiar(
        dados: state.dados.map((u) => u.id == tempId ? criado : u).toList(),
      ));
    } catch (e) {
      emit(state.copiar(
        dados: state.dados.where((u) => u.id != tempId).toList(),
        erro: "Falha ao criar: $e",
      ));
    }
  }

  Future<void> _atualizar(AtualizarUsuarioEvento event, Emitter<UsuarioListaEstado> emit) async {
    final original = state.dados.firstWhere((u) => u.id == event.usuario.id);

    emit(state.copiar(
      dados: state.dados.map((u) => u.id == event.usuario.id ? event.usuario : u).toList(),
    ));

    try {
      final atualizado = await repo.atualizarUsuario(event.usuario);
      emit(state.copiar(
        dados: state.dados.map((u) => u.id == atualizado.id ? atualizado : u).toList(),
      ));
    } catch (e) {
      emit(state.copiar(
        dados: state.dados.map((u) => u.id == original.id ? original : u).toList(),
        erro: "Falha ao atualizar: $e",
      ));
    }
  }

  Future<void> _remover(RemoverUsuarioEvento event, Emitter<UsuarioListaEstado> emit) async {
    final antes = state.dados;
    emit(state.copiar(dados: antes.where((u) => u.id != event.id).toList()));

    try {
      await repo.removerUsuario(event.id);
    } catch (e) {
      emit(state.copiar(
        dados: antes,
        erro: "Falha ao remover: $e",
      ));
    }
  }
}
