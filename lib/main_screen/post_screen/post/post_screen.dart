import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main_screen/post_screen/models/post_response.dart';
import 'package:river_pod/main_screen/post_screen/post_list_state/post_list.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<PostResponseModel> posts = ref.watch(postListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: posts.when(
        loading: () => CircularProgressIndicator(),
        error: (e, stack) => Text('Error: $e'),
        data: (posts) {
          return ListView.builder(
            itemCount: posts.posts.length,
            itemBuilder: (context, index) {
              final post = posts.posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
      ),
    );
  }
}