import 'package:mvvm_api_t/model/post_screen_model.dart';

abstract class PostReposotries {
  Future<List<PostScreenModel>> getAllPosts();
  Future<PostScreenModel> getPost(int id);
}
