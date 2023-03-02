import 'package:get/get.dart';

import '../../../models/post.dart';
import '../providers/post_providers.dart';

class PostController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;

  @override
  void onInit() {
    PostsProvider().getPostsList(
      beforeSend: () {
        print("before send");
      },
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
