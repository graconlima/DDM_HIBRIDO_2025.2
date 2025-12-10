import '../Model/Post.dart';
import '../Service/PostService.dart';
import 'package:flutter/material.dart';

class DetalhesPostPage extends StatelessWidget {
  final int id;
  final PostService service = PostService();
  DetalhesPostPage({required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: FutureBuilder<Post>(
        future: service.obterPostPorId(id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else {
            final post = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(post.title, style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 16),
                  Text(post.body),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
