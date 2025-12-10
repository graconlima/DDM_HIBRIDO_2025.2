class Usuario {
  final int id;
  final String nome;
  final String email;

  Usuario({
    required this.id,
    required this.nome,
    required this.email,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nome: json['name'],
      email: json['email'],
    );
  }
}

