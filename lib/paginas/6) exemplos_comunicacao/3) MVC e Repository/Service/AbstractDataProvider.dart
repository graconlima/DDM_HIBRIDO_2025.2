import '../Model/Album.dart';

//modelo que os providers devem seguir
abstract class AbstractDataProvider{

  //Varios Albuns
  //Future<List<Album>> get();

  //Um Album
  Future<Album> get(int album);//nao pode fal
}