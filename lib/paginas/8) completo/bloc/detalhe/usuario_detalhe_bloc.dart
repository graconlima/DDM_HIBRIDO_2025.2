import 'package:bloc/bloc.dart';
import '../../repository/usuario_repository.dart';
import 'usuario_detalhe_event.dart';

class UsuarioDetalheBloc extends Bloc<UsuarioDetalheEvento, UsuarioDetalheEstado> {
  final UsuarioRepositorio repo;

  UsuarioDetalheBloc(this.repo) : super(UsuarioDetalheEstado.inicial()) {
    on<CarregarDetalhe>(_carregar);
    on<RetentarCarregamento>(_carregar);
  }

  Future<void> _carregar(
      UsuarioDetalheEvento event, Emitter<UsuarioDetalheEstado> emit) async {
    final id = (event is CarregarDetalhe) ? event.id : (event as RetentarCarregamento).id;

    emit(state.copiar(carregando: true, erro: null));

    try {
      final detalhe = await repo.obterDetalhe(id);
      emit(state.copiar(carregando: false, dado: detalhe));
    } catch (e) {
      emit(state.copiar(carregando: false, erro: "Erro: $e"));
    }
  }
}
