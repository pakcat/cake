
import 'package:get/get.dart';
import '../controllers/lorem_controller.dart';


class LoremBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoremController>(() => LoremController());
  }
}