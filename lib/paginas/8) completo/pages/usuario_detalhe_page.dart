import 'package:ddm_hibrido/paginas/8)%20completo/bloc/detalhe/usuario_detalhe_bloc.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/detalhe/usuario_detalhe_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsuarioDetalhePage extends StatelessWidget {
  final int id;

  UsuarioDetalhePage({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes")),
      body: BlocBuilder<UsuarioDetalheBloc, UsuarioDetalheEstado>(
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
                        context.read<UsuarioDetalheBloc>().add(RetentarCarregamento(id)),
                    child: Text("Tentar novamente"),
                  ),
                ],
              ),
            );
          }

          if (estado.dado == null) {
            return Center(child: Text("Nenhum dado encontrado."));
          }

          final u = estado.dado!;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nome: ${u.nome}", style: TextStyle(fontSize: 22)),
                Text("Telefone: ${u.telefone}"),
                Text("Website: ${u.website}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
