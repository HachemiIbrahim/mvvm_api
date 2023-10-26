import 'package:mvvm_api_t/model/post_screen_model.dart';
import 'package:mvvm_api_t/reposotries/post_api.dart';
import 'package:mvvm_api_t/viemModel/single_post_view_model.dart';

class PostViewModel {
  final title = "Posts";
  Future<List<SinglePostViewModel>> fetchAllPosts() async {
    List<PostScreenModel> list = await PostApi().getAllPosts();
    return list.map((e) => SinglePostViewModel(postModel: e)).toList();
  }
}
