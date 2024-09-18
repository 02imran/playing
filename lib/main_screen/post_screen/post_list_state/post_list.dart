import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main_screen/post_screen/models/post_response.dart';
import 'package:river_pod/main_screen/post_screen/repository/repository.dart';

final postListProvider = FutureProvider<PostResponseModel>((ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.getList();
});

final repositoryProvider = Provider<Repository>((ref) {
  return Repository();
});
