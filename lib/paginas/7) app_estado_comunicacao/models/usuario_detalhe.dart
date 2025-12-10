class UsuarioDetalhe {
  final int id;
  final String nome;
  final String telefone;
  final String website;

  UsuarioDetalhe({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.website,
  });

  factory UsuarioDetalhe.fromJson(Map<String, dynamic> json) {
    return UsuarioDetalhe(
      id: json['id'],
      nome: json['name'],
      telefone: json['phone'],
      website: json['website'],
    );
  }
}
