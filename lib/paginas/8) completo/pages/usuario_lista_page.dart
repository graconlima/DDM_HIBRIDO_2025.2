import 'package:ddm_hibrido/paginas/8)%20completo/bloc/detalhe/usuario_detalhe_bloc.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/detalhe/usuario_detalhe_event.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_bloc.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_event.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_state.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/pages/usuario_criar_page.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/pages/usuario_detalhe_page.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/pages/usuario_editar_page.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/repository/usuario_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsuarioListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usuários")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => UsuarioCriarPage()));
        },
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<UsuarioListaBloc, UsuarioListaEstado>(
        builder: (context, estado) {
          if (estado.carregando) {
            return Center(child: CircularProgressIndicator());
          }

          if (estado.erro != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(estado.erro!),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<UsuarioListaBloc>().add(TentarNovamente()),
                    child: Text("Tentar novamente"),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: estado.dados.length,
            itemBuilder: (_, i) {
              final usuario = estado.dados[i];

              return ListTile(
                title: Text(usuario.nome),
                subtitle: Text(usuario.email),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (_) => UsuarioDetalheBloc(
                            context.read<UsuarioRepositorio>())
                          ..add(CarregarDetalhe(usuario.id)),
                        child: UsuarioDetalhePage(id: usuario.id),
                      ),
                    ),
                  );
                },
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UsuarioEditarPage(usuario: usuario),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
