class Album{
  int id;
  int idUsuario;
  String titulo;

  Album({required this.id, required this.idUsuario, required this.titulo});

  factory Album.converterJson(Map<String, dynamic> dadosJSON){
    return Album(id: dadosJSON['id'], idUsuario: dadosJSON['userId'], titulo: dadosJSON['title']);
  }
}