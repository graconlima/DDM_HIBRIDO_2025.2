import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_event.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/repository/usuario_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/lista/usuario_lista_bloc.dart';
import 'pages/usuario_lista_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UsuarioRepositorio>(
          create: (_) => UsuarioRepositorio(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<UsuarioListaBloc>(
            create: (context) =>
            UsuarioListaBloc(context.read<UsuarioRepositorio>())
              ..add(CarregarUsuarios()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gerenciamento com Bloc',
          theme: ThemeData(
            colorSchemeSeed: Colors.deepPurple,
            useMaterial3: true,
          ),
          home: UsuarioListaPage(),
        ),
      ),
    );
  }
}
