import 'package:flutter/material.dart';
import 'package:mvvm_api_t/viemModel/single_post_view_model.dart';

class SinglePostView extends StatelessWidget {
  final SinglePostViewModel singlePost;
  const SinglePostView({
    super.key,
    required this.singlePost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  singlePost.postModel!.title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Text(
            singlePost.postModel!.body!,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          const Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
