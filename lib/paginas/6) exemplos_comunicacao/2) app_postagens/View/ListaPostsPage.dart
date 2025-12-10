import '../View/DetalhesPostsPage.dart';
import '../Model/Post.dart';
import '../Service/PostService.dart';
import 'package:flutter/material.dart';

class ListaPostsPage extends StatefulWidget {
  @override
  _ListaPostsPageState createState() => _ListaPostsPageState();
}
class _ListaPostsPageState extends State<ListaPostsPage> {
  late Future<List<Post>> futuroPosts;
  final PostService service = PostService();
  @override
  void initState() {
    super.initState();
    futuroPosts = service.obterPosts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: FutureBuilder<List<Post>>(
        future: futuroPosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else {
            final posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(posts[i].title),
                  subtitle: Text('ID: ${posts[i].id}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalhesPostPage(id: posts[i].id),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
