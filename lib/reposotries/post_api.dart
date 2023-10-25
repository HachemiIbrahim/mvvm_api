import 'package:dio/dio.dart';
import 'package:mvvm_api_t/model/post_screen_model.dart';
import 'package:mvvm_api_t/reposotries/post_reposotries.dart';

class PostApi extends PostReposotries {
  @override
  Future<List<PostScreenModel>> getAllPosts() async {
    List<PostScreenModel> posts = [];
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");
      var list = response.data as List;
      posts = list.map((e) => PostScreenModel.fromJson(e)).toList();
    } catch (exeption) {
      print(exeption);
    }
    print(posts);
    return posts;
  }

  @override
  Future<PostScreenModel> getPost(int id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
