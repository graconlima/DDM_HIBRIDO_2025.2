import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Service/DataProvider.dart';
import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Service/Repository.dart';

void main() async {

  AlbumRepository ar = AlbumRepository(adp: AlbumDataProvider());
  var meuAlbum = await ar.getAlbum(7);

  print("Id:");
  print(meuAlbum.id);
  print("Id do Usuario:");
  print(meuAlbum.idUsuario);
  print("Titulo: ");
  print(meuAlbum.titulo);
}