import 'View/ListaPostsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TelaInicial());
}

class TelaInicial extends StatelessWidget {
  const TelaInicial ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo API',
      home: ListaPostsPage(),
    );
  }
}