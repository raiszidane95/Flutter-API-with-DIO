import 'package:get/get.dart';

import '../../account/controllers/account_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../post/controllers/post_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<PostController>(
      () => PostController(),
    );
  }
}
