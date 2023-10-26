import 'package:flutter/material.dart';
import 'package:mvvm_api_t/reposotries/post_api.dart';
import 'package:mvvm_api_t/viemModel/post_view_model.dart';
import 'package:mvvm_api_t/view/single_post_view.dart';

// ignore: must_be_immutable
class PostScreen extends StatelessWidget {
  PostScreen({Key? key}) : super(key: key);
  var postViewModel = PostViewModel(postReposotries: PostApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postViewModel.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: postViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (!snapshot.hasData) {
              return const Text("There is no data");
            } else {
              var posts = snapshot.data;
              return ListView.builder(
                itemCount: posts!.length,
                itemBuilder: (context, index) =>
                    SinglePostView(singlePost: posts[index]),
              );
            }
          },
        ),
      ),
    );
  }
}
