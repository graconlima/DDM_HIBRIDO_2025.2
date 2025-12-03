import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Model/Album.dart';
import 'package:ddm_hibrido/paginas/6)%20exemplos_comunicacao/MVC/Service/AbstractDataProvider.dart';

//determina como os dados serão manipulados antes de chegarem na UI
class AlbumRepository{
  final AbstractDataProvider adp;

  AlbumRepository({required this.adp}) : assert (adp != null);

  Future<Album> getAlbum(int album) async{
    return await adp.get(album);
  }
}