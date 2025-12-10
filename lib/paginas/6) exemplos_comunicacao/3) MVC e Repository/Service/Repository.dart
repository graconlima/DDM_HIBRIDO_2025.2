import '../Model/Album.dart';
import '../Service/AbstractDataProvider.dart';

//determina como os dados serão manipulados antes de chegarem na UI
class AlbumRepository{
  final AbstractDataProvider adp;

  AlbumRepository({required this.adp}) : assert (adp != null);

  Future<Album> getAlbum(int album) async{
    return await adp.get(album);
  }
}