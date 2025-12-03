import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_bloc.dart';
import 'package:ddm_hibrido/paginas/8)%20completo/bloc/lista/usuario_lista_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsuarioCriarPage extends StatefulWidget {
  @override
  _UsuarioCriarPageState createState() => _UsuarioCriarPageState();
}

class _UsuarioCriarPageState extends State<UsuarioCriarPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  bool _enviando = false;

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _enviando = true);

    context.read<UsuarioListaBloc>().add(
      CriarUsuario(
        nome: _nomeController.text.trim(),
        email: _emailController.text.trim(),
      ),
    );

    await Future.delayed(Duration(milliseconds: 300));
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criar usuário")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                controller: _nomeController,
                validator: (v) => (v == null || v.isEmpty) ? "Informe o nome" : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                controller: _emailController,
                validator: (v) => (v == null || v.isEmpty) ? "Informe o email" : null,
              ),
              ElevatedButton(
                onPressed: _enviando ? null : _submit,
                child: Text("Criar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
