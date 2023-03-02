import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/loading_overlay.dart';
import '../components/posts_list_item.dart';
import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PostView'),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<PostController>(
            builder: (controller) {
              return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                  itemCount: controller.postsList.length,
                  itemBuilder: (context, index) => PostsListItem(
                    post: controller.postsList[index],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
