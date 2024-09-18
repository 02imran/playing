import 'dart:convert';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  static List<Post> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => Post.fromJson(json)).toList();
  }
}

class PostResponseModel {
  final List<Post> posts;

  PostResponseModel({this.posts = const []});

  factory PostResponseModel.fromJson(List<dynamic> json) {
    return PostResponseModel(posts: Post.listFromJson(json));
  }
}
