import 'package:flutter/material.dart';
import 'package:mvvm_api_t/viemModel/post_view_model.dart';

// ignore: must_be_immutable
class PostScreen extends StatelessWidget {
  PostScreen({Key? key}) : super(key: key);
  var postViewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postViewModel.title),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              postViewModel.fetchAllPosts();
            },
            child: const Text("load")),
      ),
    );
  }
}
