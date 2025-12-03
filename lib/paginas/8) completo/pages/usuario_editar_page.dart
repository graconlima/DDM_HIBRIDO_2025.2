import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_bloc.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_event.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/models/usuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsuarioEditarPage extends StatefulWidget {
  final Usuario usuario;
  UsuarioEditarPage({required this.usuario});

  @override
  _UsuarioEditarPageState createState() => _UsuarioEditarPageState();
}

class _UsuarioEditarPageState extends State<UsuarioEditarPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nomeController;
  late TextEditingController _emailController;
  bool _enviando = false;

  @override
  void initState() {
    super.initState();
    _nomeController = TextEditingController(text: widget.usuario.nome);
    _emailController = TextEditingController(text: widget.usuario.email);
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _enviando = true);

    final atualizado = Usuario(
      id: widget.usuario.id,
      nome: _nomeController.text.trim(),
      email: _emailController.text.trim(),
    );

    context.read<UsuarioListaBloc>().add(
      AtualizarUsuarioEvento(atualizado),
    );

    await Future.delayed(Duration(milliseconds: 300));
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Editar usuário")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: "Nome"),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
              ),
              ElevatedButton(
                onPressed: _enviando ? null : _submit,
                child: Text("Salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
