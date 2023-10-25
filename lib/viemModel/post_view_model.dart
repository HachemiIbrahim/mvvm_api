import 'package:dio/dio.dart';

class PostViewModel {
  final title = "Posts";
  fetchAllPosts() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");
      print(response);
    } catch (exeption) {
      print(exeption);
    }
  }
}
