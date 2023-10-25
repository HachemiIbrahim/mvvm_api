import 'package:mvvm_api_t/reposotries/post_api.dart';

class PostViewModel {
  final title = "Posts";
  fetchAllPosts() async {
    PostApi().getAllPosts();
  }
}
